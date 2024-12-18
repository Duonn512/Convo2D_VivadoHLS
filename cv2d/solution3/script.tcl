############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project cv2d
set_top conv2d
add_files conv2D.h
add_files conv2D.c
add_files -tb conv2D_test.c -cflags "-Wno-unknown-pragmas"
open_solution "solution3"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
config_export -display_name cv2d_lbuf_sol3 -format ip_catalog -rtl vhdl -version 0.0.0
source "./cv2d/solution3/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all -rtl vhdl
export_design -rtl vhdl -format ip_catalog -version "0.0.0" -display_name "cv2d_lbuf_sol3"
