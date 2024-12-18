############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_interface -mode s_axilite -bundle cv_io "conv2d"
set_directive_interface -mode s_axilite -bundle cv_io "conv2d" input
set_directive_interface -mode s_axilite -bundle cv_io "conv2d" kernel
set_directive_interface -mode s_axilite -bundle cv_io "conv2d" output
set_directive_array_partition -type complete -dim 1 "conv2d/conv2d_label0" line_buffer
set_directive_unroll "conv2d/conv2d_label1"
set_directive_unroll "conv2d/conv2d_label2"
set_directive_unroll "conv2d/conv2d_label3"
