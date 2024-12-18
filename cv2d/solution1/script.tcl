############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project cv2d
set_top conv2d
add_files conv2D.c
add_files conv2D.h
add_files conv2D.c
add_files conv2D.h
add_files -tb conv2D_test.c
add_files -tb conv2D_test.c
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./cv2d/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
