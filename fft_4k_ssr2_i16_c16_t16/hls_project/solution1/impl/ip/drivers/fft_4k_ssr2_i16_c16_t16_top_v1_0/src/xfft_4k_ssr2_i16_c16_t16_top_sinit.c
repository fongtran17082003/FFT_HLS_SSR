// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xfft_4k_ssr2_i16_c16_t16_top.h"

extern XFft_4k_ssr2_i16_c16_t16_top_Config XFft_4k_ssr2_i16_c16_t16_top_ConfigTable[];

#ifdef SDT
XFft_4k_ssr2_i16_c16_t16_top_Config *XFft_4k_ssr2_i16_c16_t16_top_LookupConfig(UINTPTR BaseAddress) {
	XFft_4k_ssr2_i16_c16_t16_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XFft_4k_ssr2_i16_c16_t16_top_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XFft_4k_ssr2_i16_c16_t16_top_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XFft_4k_ssr2_i16_c16_t16_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XFft_4k_ssr2_i16_c16_t16_top_Initialize(XFft_4k_ssr2_i16_c16_t16_top *InstancePtr, UINTPTR BaseAddress) {
	XFft_4k_ssr2_i16_c16_t16_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XFft_4k_ssr2_i16_c16_t16_top_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XFft_4k_ssr2_i16_c16_t16_top_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XFft_4k_ssr2_i16_c16_t16_top_Config *XFft_4k_ssr2_i16_c16_t16_top_LookupConfig(u16 DeviceId) {
	XFft_4k_ssr2_i16_c16_t16_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XFFT_4K_SSR2_I16_C16_T16_TOP_NUM_INSTANCES; Index++) {
		if (XFft_4k_ssr2_i16_c16_t16_top_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XFft_4k_ssr2_i16_c16_t16_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XFft_4k_ssr2_i16_c16_t16_top_Initialize(XFft_4k_ssr2_i16_c16_t16_top *InstancePtr, u16 DeviceId) {
	XFft_4k_ssr2_i16_c16_t16_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XFft_4k_ssr2_i16_c16_t16_top_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XFft_4k_ssr2_i16_c16_t16_top_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

