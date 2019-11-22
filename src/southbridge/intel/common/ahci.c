/*
 * This file is part of the coreboot project.
 *
 * Copyright (C) 2019 Patrick Rudolph <siro@das-labor.org>
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; version 2 of the License.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 */

#include <ahci.h>
#include <arch/io.h>
#include <device/device.h>
#include <device/pci.h>
#include <console/console.h>

#include "ahci.h"

/**
 * Initialize the AHCI config space.
 * @param port_map	The ports to enable
 * @param sam		Set SAM bit (no legacy device support)
 * @param cccs		Set CCCS bit
 * @param iss		Limit the controller to sata gen x
 * @param devslp	Enable DEVSLP feature if supported
 * @param clear_vnd	Clear bits in vendor config space
 */
void sb_ahci_init(struct device *const dev,
		 const u32 port_map,
		 const bool sam,
		 const bool cccs,
		 const u8 iss,
		 const bool devslp,
		 const u32 clear_vnd)
{
	u32 reg32;
	u32 version;
	struct resource *res;
	u8 *abar;
	unsigned int ports;

	/* Initialize AHCI memory-mapped space */
	res = find_resource(dev, PCI_BASE_ADDRESS_5);
	if (!res)
		return;

	abar = res2mmio(res, 0, 0);
	/*
	 * Set AHCI access mode.
	 * AHCI Spec Chapter 3.1.2:
	 * "No other ABAR registers should be accessed before this."
	 */
	reg32 = read32(abar + AHCI_GHC);
	if (!(reg32 & AHCI_GHC_AE)) {
		reg32 |= AHCI_GHC_AE;
		write32(abar + AHCI_GHC, reg32);
	}

	/* Get AHCI version */
	version = read32(abar + AHCI_VS);
	printk(BIOS_INFO, "AHCI: implements AHCI %d.%d\n", AHCI_VS_MAJOR(version),
		AHCI_VS_MINOR(version));

	reg32 = read32(abar + AHCI_CAP);
	printk(BIOS_INFO, "AHCI: supports SATA Gen%d\n", (reg32 >> 20) & 0xf);

	ports = (reg32 & AHCI_CAP_NP_MASK) + 1;
	printk(BIOS_INFO, "AHCI: supports up to %d ports\n", ports);

	/* CAP (HBA Capabilities) */
	/* Program Write-Once bits (this isn't part of the AHCI spec, but PCH). */
	if (sam)
		reg32 |= AHCI_CAP_SAM;
	if (cccs && version >= AHCI_VERSION(1, 10))
		reg32 |= AHCI_CAP_CCCS;
	if (iss) {
		u8 max_iss;
		if (version >= AHCI_VERSION(1, 20))
			max_iss = MIN(iss, 3);
		else
			max_iss = MIN(iss, 2);
		reg32 &= ~AHCI_CAP_ISS(0xf);
		reg32 |= AHCI_CAP_ISS(max_iss);
		printk(BIOS_INFO, "AHCI: limited to Gen%d\n", max_iss);
	}
	reg32 |= AHCI_CAP_PSC;
	reg32 |= AHCI_CAP_SSC;
	reg32 |= AHCI_CAP_SALP;
	reg32 |= AHCI_CAP_SSS;
	if (version >= AHCI_VERSION(1, 10)) {
		reg32 &= ~AHCI_CAP_SXS;
		reg32 &= ~AHCI_CAP_EMS;
		reg32 &= ~AHCI_CAP_SPM;
	}
	write32(abar + AHCI_CAP, reg32);

	if (version >= AHCI_VERSION(1, 20)) {
		reg32 = read32(abar + AHCI_CAP2);
		/* Clear BIOS handoff support */
		reg32 &= ~AHCI_CAP2_BOH;
		if (version >= AHCI_VERSION(1, 30)) {
			/* Configure DEVSLP support */
			if (devslp) {
				reg32 |= AHCI_CAP2_APST;
				reg32 |= AHCI_CAP2_SDS;
				reg32 |= AHCI_CAP2_SADM;
				reg32 |= AHCI_CAP2_DESO;
			} else {
				reg32 &= ~AHCI_CAP2_SDS;
			}
			/* Disable NVMHCI */
			reg32 &= ~AHCI_CAP2_NVMP;
		}
		write32(abar + AHCI_CAP2, reg32);
	}

	if (port_map & ~((1 << ports) - 1))
		printk(BIOS_ERR, "AHCI: Invalid port map given!\n");

	write32(abar + AHCI_PI, port_map & ((1 << ports) - 1));
	/* PCH code reads back twice, do we need it, too? */
	(void) read32(abar + AHCI_PI); /* Read back 1 */
	(void) read32(abar + AHCI_PI); /* Read back 2 */

	/* Clear vendor specific bits */
	reg32 = read32(abar + AHCI_VENDOR);
	reg32 &= ~clear_vnd;
	write32(abar + AHCI_VENDOR, reg32);

	/* Lock R/WO bits in Port command registers. */
	for (size_t i = 0; i < ports; ++i) {
		if (!((1 << i) & port_map))
			continue;
		u8 *addr = abar + AHCI_PORT + (i * AHCI_PORT_LEN);
		write32(addr, read32(addr + AHCI_PORT_PxCMD));
	}
}
