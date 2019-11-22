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

#ifndef __AHCI_H__
#define __AHCI_H__

/* Serial ATA AHCI 1.3.1 Specification */

#define AHCI_CAP		0x00
#define  AHCI_CAP_NP_MASK	0x1f
#define  AHCI_CAP_PSC		(1u << 13)
#define  AHCI_CAP_SSC		(1u << 14)
#define  AHCI_CAP_PMD		(1u << 15)
#define  AHCI_CAP_SPM		(1u << 17)
#define  AHCI_CAP_SAM		(1u << 18)
#define  AHCI_CAP_SNZO		(1u << 19)
#define  AHCI_CAP_ISS(x)	((x) << 20)
#define  AHCI_CAP_SCLO		(1u << 24)
#define  AHCI_CAP_SAL		(1u << 25)
#define  AHCI_CAP_SALP		(1u << 26)
#define  AHCI_CAP_SSS		(1u << 27)
#define  AHCI_CAP_SIS		(1u << 28)
#define  AHCI_CAP_SNCQ		(1u << 30)
#define  AHCI_CAP_S64A		(1u << 31)
/* Added in AHCI 1.1 */
#define  AHCI_CAP_SXS		(1u << 5)
#define  AHCI_CAP_EMS		(1u << 6)
#define  AHCI_CAP_CCCS		(1u << 7)
/* Added in AHCI 1.2 */
#define  AHCI_CAP_SSNTF		(1u << 29)

#define AHCI_GHC		0x04
#define  AHCI_GHC_AE		(1u << 31)
#define AHCI_PI			0x0c
#define AHCI_VS			0x10
#define  AHCI_VS_MAJOR(x)	((((x) >> 24) & 0xf) * 10 + (((x) >> 16) & 0xf))
#define  AHCI_VS_MINOR(x)	((((x) >> 8) & 0xf) * 10 + (((x) >> 0) & 0xf))

#define AHCI_VERSION(mj, mn)	(((mj / 10) << 24) | ((mj % 10) << 16) | \
				 ((mn / 10) << 8) | ((mn % 10) << 0))

/* Added in AHCI 1.1 */
#define AHCI_CCC_CTL		0x14
#define AHCI_CCC_PORTS		0x18
#define AHCI_EM_LOC		0x1c
#define AHCI_EM_CTL		0x20
/* Added in AHCI 1.2 */
#define AHCI_CAP2		0x24
#define  AHCI_CAP2_BOH		(1u << 0)
/* Added in AHCI 1.3 */
#define  AHCI_CAP2_NVMP		(1u << 1)
#define  AHCI_CAP2_APST		(1u << 2)
#define  AHCI_CAP2_SDS		(1u << 3)
#define  AHCI_CAP2_SADM		(1u << 4)
#define  AHCI_CAP2_DESO		(1u << 5)

#define AHCI_BOHC		0x28

#define AHCI_VENDOR		0xa0
#define AHCI_PORT		0x100
#define AHCI_PORT_PxCMD		0x18
#define AHCI_PORT_LEN		0x80


#endif
