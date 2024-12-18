# ==============================================================
# File generated on Thu Dec 19 02:29:51 +0700 2024
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../../conv2D_test.c -cflags { -Wno-unknown-pragmas}
add_files conv2D.c
add_files conv2D.h
set_part xc7z020clg484-1
create_clock -name default -period 10
config_export -display_name=cv2d_lbuf_sol3
config_export -format=ip_catalog
config_export -rtl=vhdl
config_export -version=0.0.0
set_directive_interface conv2d 
set_directive_interface conv2d 
set_directive_interface conv2d 
set_directive_interface conv2d 
set_directive_array_partition conv2d/conv2d_label0 
set_directive_unroll conv2d/conv2d_label1 
set_directive_unroll conv2d/conv2d_label2 
set_directive_unroll conv2d/conv2d_label3 
