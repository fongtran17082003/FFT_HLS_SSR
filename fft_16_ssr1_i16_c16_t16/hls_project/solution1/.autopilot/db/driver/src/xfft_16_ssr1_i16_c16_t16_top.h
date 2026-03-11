// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XFFT_16_SSR1_I16_C16_T16_TOP_H
#define XFFT_16_SSR1_I16_C16_T16_TOP_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xfft_16_ssr1_i16_c16_t16_top_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XFft_16_ssr1_i16_c16_t16_top_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XFft_16_ssr1_i16_c16_t16_top;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XFft_16_ssr1_i16_c16_t16_top_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XFft_16_ssr1_i16_c16_t16_top_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XFft_16_ssr1_i16_c16_t16_top_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XFft_16_ssr1_i16_c16_t16_top_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XFft_16_ssr1_i16_c16_t16_top_Initialize(XFft_16_ssr1_i16_c16_t16_top *InstancePtr, UINTPTR BaseAddress);
XFft_16_ssr1_i16_c16_t16_top_Config* XFft_16_ssr1_i16_c16_t16_top_LookupConfig(UINTPTR BaseAddress);
#else
int XFft_16_ssr1_i16_c16_t16_top_Initialize(XFft_16_ssr1_i16_c16_t16_top *InstancePtr, u16 DeviceId);
XFft_16_ssr1_i16_c16_t16_top_Config* XFft_16_ssr1_i16_c16_t16_top_LookupConfig(u16 DeviceId);
#endif
int XFft_16_ssr1_i16_c16_t16_top_CfgInitialize(XFft_16_ssr1_i16_c16_t16_top *InstancePtr, XFft_16_ssr1_i16_c16_t16_top_Config *ConfigPtr);
#else
int XFft_16_ssr1_i16_c16_t16_top_Initialize(XFft_16_ssr1_i16_c16_t16_top *InstancePtr, const char* InstanceName);
int XFft_16_ssr1_i16_c16_t16_top_Release(XFft_16_ssr1_i16_c16_t16_top *InstancePtr);
#endif

void XFft_16_ssr1_i16_c16_t16_top_Start(XFft_16_ssr1_i16_c16_t16_top *InstancePtr);
u32 XFft_16_ssr1_i16_c16_t16_top_IsDone(XFft_16_ssr1_i16_c16_t16_top *InstancePtr);
u32 XFft_16_ssr1_i16_c16_t16_top_IsIdle(XFft_16_ssr1_i16_c16_t16_top *InstancePtr);
u32 XFft_16_ssr1_i16_c16_t16_top_IsReady(XFft_16_ssr1_i16_c16_t16_top *InstancePtr);
void XFft_16_ssr1_i16_c16_t16_top_EnableAutoRestart(XFft_16_ssr1_i16_c16_t16_top *InstancePtr);
void XFft_16_ssr1_i16_c16_t16_top_DisableAutoRestart(XFft_16_ssr1_i16_c16_t16_top *InstancePtr);

void XFft_16_ssr1_i16_c16_t16_top_Set_din(XFft_16_ssr1_i16_c16_t16_top *InstancePtr, u64 Data);
u64 XFft_16_ssr1_i16_c16_t16_top_Get_din(XFft_16_ssr1_i16_c16_t16_top *InstancePtr);
void XFft_16_ssr1_i16_c16_t16_top_Set_dout(XFft_16_ssr1_i16_c16_t16_top *InstancePtr, u64 Data);
u64 XFft_16_ssr1_i16_c16_t16_top_Get_dout(XFft_16_ssr1_i16_c16_t16_top *InstancePtr);
void XFft_16_ssr1_i16_c16_t16_top_Set_iter(XFft_16_ssr1_i16_c16_t16_top *InstancePtr, u32 Data);
u32 XFft_16_ssr1_i16_c16_t16_top_Get_iter(XFft_16_ssr1_i16_c16_t16_top *InstancePtr);

void XFft_16_ssr1_i16_c16_t16_top_InterruptGlobalEnable(XFft_16_ssr1_i16_c16_t16_top *InstancePtr);
void XFft_16_ssr1_i16_c16_t16_top_InterruptGlobalDisable(XFft_16_ssr1_i16_c16_t16_top *InstancePtr);
void XFft_16_ssr1_i16_c16_t16_top_InterruptEnable(XFft_16_ssr1_i16_c16_t16_top *InstancePtr, u32 Mask);
void XFft_16_ssr1_i16_c16_t16_top_InterruptDisable(XFft_16_ssr1_i16_c16_t16_top *InstancePtr, u32 Mask);
void XFft_16_ssr1_i16_c16_t16_top_InterruptClear(XFft_16_ssr1_i16_c16_t16_top *InstancePtr, u32 Mask);
u32 XFft_16_ssr1_i16_c16_t16_top_InterruptGetEnabled(XFft_16_ssr1_i16_c16_t16_top *InstancePtr);
u32 XFft_16_ssr1_i16_c16_t16_top_InterruptGetStatus(XFft_16_ssr1_i16_c16_t16_top *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
