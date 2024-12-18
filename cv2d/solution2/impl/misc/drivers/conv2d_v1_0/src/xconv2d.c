// ==============================================================
// File generated on Thu Dec 19 02:28:42 +0700 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xconv2d.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XConv2d_CfgInitialize(XConv2d *InstancePtr, XConv2d_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Cv_io_BaseAddress = ConfigPtr->Cv_io_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XConv2d_Start(XConv2d *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv2d_ReadReg(InstancePtr->Cv_io_BaseAddress, XCONV2D_CV_IO_ADDR_AP_CTRL) & 0x80;
    XConv2d_WriteReg(InstancePtr->Cv_io_BaseAddress, XCONV2D_CV_IO_ADDR_AP_CTRL, Data | 0x01);
}

u32 XConv2d_IsDone(XConv2d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv2d_ReadReg(InstancePtr->Cv_io_BaseAddress, XCONV2D_CV_IO_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XConv2d_IsIdle(XConv2d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv2d_ReadReg(InstancePtr->Cv_io_BaseAddress, XCONV2D_CV_IO_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XConv2d_IsReady(XConv2d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv2d_ReadReg(InstancePtr->Cv_io_BaseAddress, XCONV2D_CV_IO_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XConv2d_EnableAutoRestart(XConv2d *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_WriteReg(InstancePtr->Cv_io_BaseAddress, XCONV2D_CV_IO_ADDR_AP_CTRL, 0x80);
}

void XConv2d_DisableAutoRestart(XConv2d *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_WriteReg(InstancePtr->Cv_io_BaseAddress, XCONV2D_CV_IO_ADDR_AP_CTRL, 0);
}

u32 XConv2d_Get_input_r_BaseAddress(XConv2d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Cv_io_BaseAddress + XCONV2D_CV_IO_ADDR_INPUT_R_BASE);
}

u32 XConv2d_Get_input_r_HighAddress(XConv2d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Cv_io_BaseAddress + XCONV2D_CV_IO_ADDR_INPUT_R_HIGH);
}

u32 XConv2d_Get_input_r_TotalBytes(XConv2d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCONV2D_CV_IO_ADDR_INPUT_R_HIGH - XCONV2D_CV_IO_ADDR_INPUT_R_BASE + 1);
}

u32 XConv2d_Get_input_r_BitWidth(XConv2d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCONV2D_CV_IO_WIDTH_INPUT_R;
}

u32 XConv2d_Get_input_r_Depth(XConv2d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCONV2D_CV_IO_DEPTH_INPUT_R;
}

u32 XConv2d_Write_input_r_Words(XConv2d *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCONV2D_CV_IO_ADDR_INPUT_R_HIGH - XCONV2D_CV_IO_ADDR_INPUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Cv_io_BaseAddress + XCONV2D_CV_IO_ADDR_INPUT_R_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XConv2d_Read_input_r_Words(XConv2d *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCONV2D_CV_IO_ADDR_INPUT_R_HIGH - XCONV2D_CV_IO_ADDR_INPUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Cv_io_BaseAddress + XCONV2D_CV_IO_ADDR_INPUT_R_BASE + (offset + i)*4);
    }
    return length;
}

u32 XConv2d_Write_input_r_Bytes(XConv2d *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCONV2D_CV_IO_ADDR_INPUT_R_HIGH - XCONV2D_CV_IO_ADDR_INPUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Cv_io_BaseAddress + XCONV2D_CV_IO_ADDR_INPUT_R_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XConv2d_Read_input_r_Bytes(XConv2d *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCONV2D_CV_IO_ADDR_INPUT_R_HIGH - XCONV2D_CV_IO_ADDR_INPUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Cv_io_BaseAddress + XCONV2D_CV_IO_ADDR_INPUT_R_BASE + offset + i);
    }
    return length;
}

u32 XConv2d_Get_kernel_BaseAddress(XConv2d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Cv_io_BaseAddress + XCONV2D_CV_IO_ADDR_KERNEL_BASE);
}

u32 XConv2d_Get_kernel_HighAddress(XConv2d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Cv_io_BaseAddress + XCONV2D_CV_IO_ADDR_KERNEL_HIGH);
}

u32 XConv2d_Get_kernel_TotalBytes(XConv2d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCONV2D_CV_IO_ADDR_KERNEL_HIGH - XCONV2D_CV_IO_ADDR_KERNEL_BASE + 1);
}

u32 XConv2d_Get_kernel_BitWidth(XConv2d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCONV2D_CV_IO_WIDTH_KERNEL;
}

u32 XConv2d_Get_kernel_Depth(XConv2d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCONV2D_CV_IO_DEPTH_KERNEL;
}

u32 XConv2d_Write_kernel_Words(XConv2d *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCONV2D_CV_IO_ADDR_KERNEL_HIGH - XCONV2D_CV_IO_ADDR_KERNEL_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Cv_io_BaseAddress + XCONV2D_CV_IO_ADDR_KERNEL_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XConv2d_Read_kernel_Words(XConv2d *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCONV2D_CV_IO_ADDR_KERNEL_HIGH - XCONV2D_CV_IO_ADDR_KERNEL_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Cv_io_BaseAddress + XCONV2D_CV_IO_ADDR_KERNEL_BASE + (offset + i)*4);
    }
    return length;
}

u32 XConv2d_Write_kernel_Bytes(XConv2d *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCONV2D_CV_IO_ADDR_KERNEL_HIGH - XCONV2D_CV_IO_ADDR_KERNEL_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Cv_io_BaseAddress + XCONV2D_CV_IO_ADDR_KERNEL_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XConv2d_Read_kernel_Bytes(XConv2d *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCONV2D_CV_IO_ADDR_KERNEL_HIGH - XCONV2D_CV_IO_ADDR_KERNEL_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Cv_io_BaseAddress + XCONV2D_CV_IO_ADDR_KERNEL_BASE + offset + i);
    }
    return length;
}

u32 XConv2d_Get_output_r_BaseAddress(XConv2d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Cv_io_BaseAddress + XCONV2D_CV_IO_ADDR_OUTPUT_R_BASE);
}

u32 XConv2d_Get_output_r_HighAddress(XConv2d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Cv_io_BaseAddress + XCONV2D_CV_IO_ADDR_OUTPUT_R_HIGH);
}

u32 XConv2d_Get_output_r_TotalBytes(XConv2d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCONV2D_CV_IO_ADDR_OUTPUT_R_HIGH - XCONV2D_CV_IO_ADDR_OUTPUT_R_BASE + 1);
}

u32 XConv2d_Get_output_r_BitWidth(XConv2d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCONV2D_CV_IO_WIDTH_OUTPUT_R;
}

u32 XConv2d_Get_output_r_Depth(XConv2d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCONV2D_CV_IO_DEPTH_OUTPUT_R;
}

u32 XConv2d_Write_output_r_Words(XConv2d *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCONV2D_CV_IO_ADDR_OUTPUT_R_HIGH - XCONV2D_CV_IO_ADDR_OUTPUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Cv_io_BaseAddress + XCONV2D_CV_IO_ADDR_OUTPUT_R_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XConv2d_Read_output_r_Words(XConv2d *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCONV2D_CV_IO_ADDR_OUTPUT_R_HIGH - XCONV2D_CV_IO_ADDR_OUTPUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Cv_io_BaseAddress + XCONV2D_CV_IO_ADDR_OUTPUT_R_BASE + (offset + i)*4);
    }
    return length;
}

u32 XConv2d_Write_output_r_Bytes(XConv2d *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCONV2D_CV_IO_ADDR_OUTPUT_R_HIGH - XCONV2D_CV_IO_ADDR_OUTPUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Cv_io_BaseAddress + XCONV2D_CV_IO_ADDR_OUTPUT_R_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XConv2d_Read_output_r_Bytes(XConv2d *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCONV2D_CV_IO_ADDR_OUTPUT_R_HIGH - XCONV2D_CV_IO_ADDR_OUTPUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Cv_io_BaseAddress + XCONV2D_CV_IO_ADDR_OUTPUT_R_BASE + offset + i);
    }
    return length;
}

void XConv2d_InterruptGlobalEnable(XConv2d *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_WriteReg(InstancePtr->Cv_io_BaseAddress, XCONV2D_CV_IO_ADDR_GIE, 1);
}

void XConv2d_InterruptGlobalDisable(XConv2d *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_WriteReg(InstancePtr->Cv_io_BaseAddress, XCONV2D_CV_IO_ADDR_GIE, 0);
}

void XConv2d_InterruptEnable(XConv2d *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XConv2d_ReadReg(InstancePtr->Cv_io_BaseAddress, XCONV2D_CV_IO_ADDR_IER);
    XConv2d_WriteReg(InstancePtr->Cv_io_BaseAddress, XCONV2D_CV_IO_ADDR_IER, Register | Mask);
}

void XConv2d_InterruptDisable(XConv2d *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XConv2d_ReadReg(InstancePtr->Cv_io_BaseAddress, XCONV2D_CV_IO_ADDR_IER);
    XConv2d_WriteReg(InstancePtr->Cv_io_BaseAddress, XCONV2D_CV_IO_ADDR_IER, Register & (~Mask));
}

void XConv2d_InterruptClear(XConv2d *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_WriteReg(InstancePtr->Cv_io_BaseAddress, XCONV2D_CV_IO_ADDR_ISR, Mask);
}

u32 XConv2d_InterruptGetEnabled(XConv2d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XConv2d_ReadReg(InstancePtr->Cv_io_BaseAddress, XCONV2D_CV_IO_ADDR_IER);
}

u32 XConv2d_InterruptGetStatus(XConv2d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XConv2d_ReadReg(InstancePtr->Cv_io_BaseAddress, XCONV2D_CV_IO_ADDR_ISR);
}

