// ==============================================================
// File generated on Thu Dec 19 02:29:50 +0700 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xconv2d.h"

extern XConv2d_Config XConv2d_ConfigTable[];

XConv2d_Config *XConv2d_LookupConfig(u16 DeviceId) {
	XConv2d_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCONV2D_NUM_INSTANCES; Index++) {
		if (XConv2d_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XConv2d_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XConv2d_Initialize(XConv2d *InstancePtr, u16 DeviceId) {
	XConv2d_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XConv2d_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XConv2d_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

