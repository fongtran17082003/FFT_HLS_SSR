// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xfft_16k_ssr2_i14_c16_t18_top.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFft_16k_ssr2_i14_c16_t18_top_CfgInitialize(XFft_16k_ssr2_i14_c16_t18_top *InstancePtr, XFft_16k_ssr2_i14_c16_t18_top_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFft_16k_ssr2_i14_c16_t18_top_Start(XFft_16k_ssr2_i14_c16_t18_top *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFft_16k_ssr2_i14_c16_t18_top_ReadReg(InstancePtr->Control_BaseAddress, XFFT_16K_SSR2_I14_C16_T18_TOP_CONTROL_ADDR_AP_CTRL) & 0x80;
    XFft_16k_ssr2_i14_c16_t18_top_WriteReg(InstancePtr->Control_BaseAddress, XFFT_16K_SSR2_I14_C16_T18_TOP_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XFft_16k_ssr2_i14_c16_t18_top_IsDone(XFft_16k_ssr2_i14_c16_t18_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFft_16k_ssr2_i14_c16_t18_top_ReadReg(InstancePtr->Control_BaseAddress, XFFT_16K_SSR2_I14_C16_T18_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XFft_16k_ssr2_i14_c16_t18_top_IsIdle(XFft_16k_ssr2_i14_c16_t18_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFft_16k_ssr2_i14_c16_t18_top_ReadReg(InstancePtr->Control_BaseAddress, XFFT_16K_SSR2_I14_C16_T18_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XFft_16k_ssr2_i14_c16_t18_top_IsReady(XFft_16k_ssr2_i14_c16_t18_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFft_16k_ssr2_i14_c16_t18_top_ReadReg(InstancePtr->Control_BaseAddress, XFFT_16K_SSR2_I14_C16_T18_TOP_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XFft_16k_ssr2_i14_c16_t18_top_EnableAutoRestart(XFft_16k_ssr2_i14_c16_t18_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_16k_ssr2_i14_c16_t18_top_WriteReg(InstancePtr->Control_BaseAddress, XFFT_16K_SSR2_I14_C16_T18_TOP_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XFft_16k_ssr2_i14_c16_t18_top_DisableAutoRestart(XFft_16k_ssr2_i14_c16_t18_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_16k_ssr2_i14_c16_t18_top_WriteReg(InstancePtr->Control_BaseAddress, XFFT_16K_SSR2_I14_C16_T18_TOP_CONTROL_ADDR_AP_CTRL, 0);
}

void XFft_16k_ssr2_i14_c16_t18_top_Set_din(XFft_16k_ssr2_i14_c16_t18_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_16k_ssr2_i14_c16_t18_top_WriteReg(InstancePtr->Control_BaseAddress, XFFT_16K_SSR2_I14_C16_T18_TOP_CONTROL_ADDR_DIN_DATA, (u32)(Data));
    XFft_16k_ssr2_i14_c16_t18_top_WriteReg(InstancePtr->Control_BaseAddress, XFFT_16K_SSR2_I14_C16_T18_TOP_CONTROL_ADDR_DIN_DATA + 4, (u32)(Data >> 32));
}

u64 XFft_16k_ssr2_i14_c16_t18_top_Get_din(XFft_16k_ssr2_i14_c16_t18_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFft_16k_ssr2_i14_c16_t18_top_ReadReg(InstancePtr->Control_BaseAddress, XFFT_16K_SSR2_I14_C16_T18_TOP_CONTROL_ADDR_DIN_DATA);
    Data += (u64)XFft_16k_ssr2_i14_c16_t18_top_ReadReg(InstancePtr->Control_BaseAddress, XFFT_16K_SSR2_I14_C16_T18_TOP_CONTROL_ADDR_DIN_DATA + 4) << 32;
    return Data;
}

void XFft_16k_ssr2_i14_c16_t18_top_Set_dout(XFft_16k_ssr2_i14_c16_t18_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_16k_ssr2_i14_c16_t18_top_WriteReg(InstancePtr->Control_BaseAddress, XFFT_16K_SSR2_I14_C16_T18_TOP_CONTROL_ADDR_DOUT_DATA, (u32)(Data));
    XFft_16k_ssr2_i14_c16_t18_top_WriteReg(InstancePtr->Control_BaseAddress, XFFT_16K_SSR2_I14_C16_T18_TOP_CONTROL_ADDR_DOUT_DATA + 4, (u32)(Data >> 32));
}

u64 XFft_16k_ssr2_i14_c16_t18_top_Get_dout(XFft_16k_ssr2_i14_c16_t18_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFft_16k_ssr2_i14_c16_t18_top_ReadReg(InstancePtr->Control_BaseAddress, XFFT_16K_SSR2_I14_C16_T18_TOP_CONTROL_ADDR_DOUT_DATA);
    Data += (u64)XFft_16k_ssr2_i14_c16_t18_top_ReadReg(InstancePtr->Control_BaseAddress, XFFT_16K_SSR2_I14_C16_T18_TOP_CONTROL_ADDR_DOUT_DATA + 4) << 32;
    return Data;
}

void XFft_16k_ssr2_i14_c16_t18_top_Set_iter(XFft_16k_ssr2_i14_c16_t18_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_16k_ssr2_i14_c16_t18_top_WriteReg(InstancePtr->Control_BaseAddress, XFFT_16K_SSR2_I14_C16_T18_TOP_CONTROL_ADDR_ITER_DATA, Data);
}

u32 XFft_16k_ssr2_i14_c16_t18_top_Get_iter(XFft_16k_ssr2_i14_c16_t18_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFft_16k_ssr2_i14_c16_t18_top_ReadReg(InstancePtr->Control_BaseAddress, XFFT_16K_SSR2_I14_C16_T18_TOP_CONTROL_ADDR_ITER_DATA);
    return Data;
}

void XFft_16k_ssr2_i14_c16_t18_top_InterruptGlobalEnable(XFft_16k_ssr2_i14_c16_t18_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_16k_ssr2_i14_c16_t18_top_WriteReg(InstancePtr->Control_BaseAddress, XFFT_16K_SSR2_I14_C16_T18_TOP_CONTROL_ADDR_GIE, 1);
}

void XFft_16k_ssr2_i14_c16_t18_top_InterruptGlobalDisable(XFft_16k_ssr2_i14_c16_t18_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_16k_ssr2_i14_c16_t18_top_WriteReg(InstancePtr->Control_BaseAddress, XFFT_16K_SSR2_I14_C16_T18_TOP_CONTROL_ADDR_GIE, 0);
}

void XFft_16k_ssr2_i14_c16_t18_top_InterruptEnable(XFft_16k_ssr2_i14_c16_t18_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFft_16k_ssr2_i14_c16_t18_top_ReadReg(InstancePtr->Control_BaseAddress, XFFT_16K_SSR2_I14_C16_T18_TOP_CONTROL_ADDR_IER);
    XFft_16k_ssr2_i14_c16_t18_top_WriteReg(InstancePtr->Control_BaseAddress, XFFT_16K_SSR2_I14_C16_T18_TOP_CONTROL_ADDR_IER, Register | Mask);
}

void XFft_16k_ssr2_i14_c16_t18_top_InterruptDisable(XFft_16k_ssr2_i14_c16_t18_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFft_16k_ssr2_i14_c16_t18_top_ReadReg(InstancePtr->Control_BaseAddress, XFFT_16K_SSR2_I14_C16_T18_TOP_CONTROL_ADDR_IER);
    XFft_16k_ssr2_i14_c16_t18_top_WriteReg(InstancePtr->Control_BaseAddress, XFFT_16K_SSR2_I14_C16_T18_TOP_CONTROL_ADDR_IER, Register & (~Mask));
}

void XFft_16k_ssr2_i14_c16_t18_top_InterruptClear(XFft_16k_ssr2_i14_c16_t18_top *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_16k_ssr2_i14_c16_t18_top_WriteReg(InstancePtr->Control_BaseAddress, XFFT_16K_SSR2_I14_C16_T18_TOP_CONTROL_ADDR_ISR, Mask);
}

u32 XFft_16k_ssr2_i14_c16_t18_top_InterruptGetEnabled(XFft_16k_ssr2_i14_c16_t18_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFft_16k_ssr2_i14_c16_t18_top_ReadReg(InstancePtr->Control_BaseAddress, XFFT_16K_SSR2_I14_C16_T18_TOP_CONTROL_ADDR_IER);
}

u32 XFft_16k_ssr2_i14_c16_t18_top_InterruptGetStatus(XFft_16k_ssr2_i14_c16_t18_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFft_16k_ssr2_i14_c16_t18_top_ReadReg(InstancePtr->Control_BaseAddress, XFFT_16K_SSR2_I14_C16_T18_TOP_CONTROL_ADDR_ISR);
}

