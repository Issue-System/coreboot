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

#ifndef SOUTHBRIDGE_INTEL_COMMON_AHCI_H
#define SOUTHBRIDGE_INTEL_COMMON_AHCI_H

#include <device/device.h>

void sb_ahci_init(struct device *const dev,
		 const u32 port_map,
		 const bool sam,
		 const bool cccs,
		 const u8 iss,
		 const bool devslp,
		 const u32 clear_vnd);

#endif /* SOUTHBRIDGE_INTEL_COMMON_AHCI_H */
