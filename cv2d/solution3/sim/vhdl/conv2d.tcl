
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set input__kernel__output__return_group [add_wave_group input__kernel__output__return(axi_slave) -into $cinoutgroup]
add_wave /apatb_conv2d_top/AESL_inst_conv2d/interrupt -into $input__kernel__output__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_cv_io_BRESP -into $input__kernel__output__return_group -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_cv_io_BREADY -into $input__kernel__output__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_cv_io_BVALID -into $input__kernel__output__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_cv_io_RRESP -into $input__kernel__output__return_group -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_cv_io_RDATA -into $input__kernel__output__return_group -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_cv_io_RREADY -into $input__kernel__output__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_cv_io_RVALID -into $input__kernel__output__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_cv_io_ARREADY -into $input__kernel__output__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_cv_io_ARVALID -into $input__kernel__output__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_cv_io_ARADDR -into $input__kernel__output__return_group -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_cv_io_WSTRB -into $input__kernel__output__return_group -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_cv_io_WDATA -into $input__kernel__output__return_group -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_cv_io_WREADY -into $input__kernel__output__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_cv_io_WVALID -into $input__kernel__output__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_cv_io_AWREADY -into $input__kernel__output__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_cv_io_AWVALID -into $input__kernel__output__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_cv_io_AWADDR -into $input__kernel__output__return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake(internal)" -into $designtopgroup]
add_wave /apatb_conv2d_top/AESL_inst_conv2d/ap_done -into $blocksiggroup
add_wave /apatb_conv2d_top/AESL_inst_conv2d/ap_idle -into $blocksiggroup
add_wave /apatb_conv2d_top/AESL_inst_conv2d/ap_ready -into $blocksiggroup
add_wave /apatb_conv2d_top/AESL_inst_conv2d/ap_start -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_conv2d_top/AESL_inst_conv2d/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_conv2d_top/AESL_inst_conv2d/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_conv2d_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_conv2d_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_conv2d_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_conv2d_top/LENGTH_input_r -into $tb_portdepth_group -radix hex
add_wave /apatb_conv2d_top/LENGTH_kernel -into $tb_portdepth_group -radix hex
add_wave /apatb_conv2d_top/LENGTH_output_r -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_input__kernel__output__return_group [add_wave_group input__kernel__output__return(axi_slave) -into $tbcinoutgroup]
add_wave /apatb_conv2d_top/cv_io_INTERRUPT -into $tb_input__kernel__output__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/cv_io_BRESP -into $tb_input__kernel__output__return_group -radix hex
add_wave /apatb_conv2d_top/cv_io_BREADY -into $tb_input__kernel__output__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/cv_io_BVALID -into $tb_input__kernel__output__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/cv_io_RRESP -into $tb_input__kernel__output__return_group -radix hex
add_wave /apatb_conv2d_top/cv_io_RDATA -into $tb_input__kernel__output__return_group -radix hex
add_wave /apatb_conv2d_top/cv_io_RREADY -into $tb_input__kernel__output__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/cv_io_RVALID -into $tb_input__kernel__output__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/cv_io_ARREADY -into $tb_input__kernel__output__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/cv_io_ARVALID -into $tb_input__kernel__output__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/cv_io_ARADDR -into $tb_input__kernel__output__return_group -radix hex
add_wave /apatb_conv2d_top/cv_io_WSTRB -into $tb_input__kernel__output__return_group -radix hex
add_wave /apatb_conv2d_top/cv_io_WDATA -into $tb_input__kernel__output__return_group -radix hex
add_wave /apatb_conv2d_top/cv_io_WREADY -into $tb_input__kernel__output__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/cv_io_WVALID -into $tb_input__kernel__output__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/cv_io_AWREADY -into $tb_input__kernel__output__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/cv_io_AWVALID -into $tb_input__kernel__output__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/cv_io_AWADDR -into $tb_input__kernel__output__return_group -radix hex
save_wave_config conv2d.wcfg
run all
quit

