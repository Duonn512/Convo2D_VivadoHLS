// ==============================================================
// File generated on Thu Dec 19 02:29:50 +0700 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// cv_io
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read)
//         bit 7  - auto_restart (Read/Write)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0x080 ~
// 0x0ff : Memory 'input_r' (25 * 32b)
//         Word n : bit [31:0] - input_r[n]
// 0x100 ~
// 0x13f : Memory 'kernel' (9 * 32b)
//         Word n : bit [31:0] - kernel[n]
// 0x140 ~
// 0x17f : Memory 'output_r' (9 * 32b)
//         Word n : bit [31:0] - output_r[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCONV2D_CV_IO_ADDR_AP_CTRL       0x000
#define XCONV2D_CV_IO_ADDR_GIE           0x004
#define XCONV2D_CV_IO_ADDR_IER           0x008
#define XCONV2D_CV_IO_ADDR_ISR           0x00c
#define XCONV2D_CV_IO_ADDR_INPUT_R_BASE  0x080
#define XCONV2D_CV_IO_ADDR_INPUT_R_HIGH  0x0ff
#define XCONV2D_CV_IO_WIDTH_INPUT_R      32
#define XCONV2D_CV_IO_DEPTH_INPUT_R      25
#define XCONV2D_CV_IO_ADDR_KERNEL_BASE   0x100
#define XCONV2D_CV_IO_ADDR_KERNEL_HIGH   0x13f
#define XCONV2D_CV_IO_WIDTH_KERNEL       32
#define XCONV2D_CV_IO_DEPTH_KERNEL       9
#define XCONV2D_CV_IO_ADDR_OUTPUT_R_BASE 0x140
#define XCONV2D_CV_IO_ADDR_OUTPUT_R_HIGH 0x17f
#define XCONV2D_CV_IO_WIDTH_OUTPUT_R     32
#define XCONV2D_CV_IO_DEPTH_OUTPUT_R     9

