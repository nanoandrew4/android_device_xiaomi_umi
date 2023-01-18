/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_dalvik_heap.h>
#include <libinit_variant.h>

#include "vendor_init.h"

static const variant_info_t umi_info = {
    .hwc_value = "",
    .sku_value = "std",

    .brand = "Xiaomi",
    .device = "umi",
    .marketname = "Mi 10",
    .model = "M2001J2G",
    .build_fingerprint = "Xiaomi/umi/umi:12/SKQ1.211006.001/V13.0.8.0.SJBCNXM:user/release-keys",

    .nfc = true,
};

static const std::vector<variant_info_t> variants = {
    umi_info,
};

void vendor_load_properties()
{
    search_variant(variants);
    set_dalvik_heap();
}