// ==============================================================
// File generated on Thu Dec 19 02:28:42 +0700 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XCONV2D_H
#define XCONV2D_H

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
#include "xconv2d_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Cv_io_BaseAddress;
} XConv2d_Config;
#endif

typedef struct {
    u32 Cv_io_BaseAddress;
    u32 IsReady;
} XConv2d;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XConv2d_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XConv2d_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XConv2d_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XConv2d_ReadReg(BaseAddress, RegOffset) \
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
int XConv2d_Initialize(XConv2d *InstancePtr, u16 DeviceId);
XConv2d_Config* XConv2d_LookupConfig(u16 DeviceId);
int XConv2d_CfgInitialize(XConv2d *InstancePtr, XConv2d_Config *ConfigPtr);
#else
int XConv2d_Initialize(XConv2d *InstancePtr, const char* InstanceName);
int XConv2d_Release(XConv2d *InstancePtr);
#endif

void XConv2d_Start(XConv2d *InstancePtr);
u32 XConv2d_IsDone(XConv2d *InstancePtr);
u32 XConv2d_IsIdle(XConv2d *InstancePtr);
u32 XConv2d_IsReady(XConv2d *InstancePtr);
void XConv2d_EnableAutoRestart(XConv2d *InstancePtr);
void XConv2d_DisableAutoRestart(XConv2d *InstancePtr);

u32 XConv2d_Get_input_r_BaseAddress(XConv2d *InstancePtr);
u32 XConv2d_Get_input_r_HighAddress(XConv2d *InstancePtr);
u32 XConv2d_Get_input_r_TotalBytes(XConv2d *InstancePtr);
u32 XConv2d_Get_input_r_BitWidth(XConv2d *InstancePtr);
u32 XConv2d_Get_input_r_Depth(XConv2d *InstancePtr);
u32 XConv2d_Write_input_r_Words(XConv2d *InstancePtr, int offset, int *data, int length);
u32 XConv2d_Read_input_r_Words(XConv2d *InstancePtr, int offset, int *data, int length);
u32 XConv2d_Write_input_r_Bytes(XConv2d *InstancePtr, int offset, char *data, int length);
u32 XConv2d_Read_input_r_Bytes(XConv2d *InstancePtr, int offset, char *data, int length);
u32 XConv2d_Get_kernel_BaseAddress(XConv2d *InstancePtr);
u32 XConv2d_Get_kernel_HighAddress(XConv2d *InstancePtr);
u32 XConv2d_Get_kernel_TotalBytes(XConv2d *InstancePtr);
u32 XConv2d_Get_kernel_BitWidth(XConv2d *InstancePtr);
u32 XConv2d_Get_kernel_Depth(XConv2d *InstancePtr);
u32 XConv2d_Write_kernel_Words(XConv2d *InstancePtr, int offset, int *data, int length);
u32 XConv2d_Read_kernel_Words(XConv2d *InstancePtr, int offset, int *data, int length);
u32 XConv2d_Write_kernel_Bytes(XConv2d *InstancePtr, int offset, char *data, int length);
u32 XConv2d_Read_kernel_Bytes(XConv2d *InstancePtr, int offset, char *data, int length);
u32 XConv2d_Get_output_r_BaseAddress(XConv2d *InstancePtr);
u32 XConv2d_Get_output_r_HighAddress(XConv2d *InstancePtr);
u32 XConv2d_Get_output_r_TotalBytes(XConv2d *InstancePtr);
u32 XConv2d_Get_output_r_BitWidth(XConv2d *InstancePtr);
u32 XConv2d_Get_output_r_Depth(XConv2d *InstancePtr);
u32 XConv2d_Write_output_r_Words(XConv2d *InstancePtr, int offset, int *data, int length);
u32 XConv2d_Read_output_r_Words(XConv2d *InstancePtr, int offset, int *data, int length);
u32 XConv2d_Write_output_r_Bytes(XConv2d *InstancePtr, int offset, char *data, int length);
u32 XConv2d_Read_output_r_Bytes(XConv2d *InstancePtr, int offset, char *data, int length);

void XConv2d_InterruptGlobalEnable(XConv2d *InstancePtr);
void XConv2d_InterruptGlobalDisable(XConv2d *InstancePtr);
void XConv2d_InterruptEnable(XConv2d *InstancePtr, u32 Mask);
void XConv2d_InterruptDisable(XConv2d *InstancePtr, u32 Mask);
void XConv2d_InterruptClear(XConv2d *InstancePtr, u32 Mask);
u32 XConv2d_InterruptGetEnabled(XConv2d *InstancePtr);
u32 XConv2d_InterruptGetStatus(XConv2d *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
