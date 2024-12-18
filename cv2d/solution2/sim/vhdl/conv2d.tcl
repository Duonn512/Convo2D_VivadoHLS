
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set output_group [add_wave_group output(memory) -into $coutputgroup]
add_wave /apatb_conv2d_top/AESL_inst_conv2d/output_r_d1 -into $output_group -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/output_r_we1 -into $output_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/output_r_ce1 -into $output_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/output_r_address1 -into $output_group -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/output_r_d0 -into $output_group -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/output_r_we0 -into $output_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/output_r_ce0 -into $output_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/output_r_address0 -into $output_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set kernel_group [add_wave_group kernel(memory) -into $cinputgroup]
add_wave /apatb_conv2d_top/AESL_inst_conv2d/kernel_q1 -into $kernel_group -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/kernel_ce1 -into $kernel_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/kernel_address1 -into $kernel_group -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/kernel_q0 -into $kernel_group -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/kernel_ce0 -into $kernel_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/kernel_address0 -into $kernel_group -radix hex
set input_group [add_wave_group input(memory) -into $cinputgroup]
add_wave /apatb_conv2d_top/AESL_inst_conv2d/input_r_q1 -into $input_group -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/input_r_ce1 -into $input_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/input_r_address1 -into $input_group -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/input_r_q0 -into $input_group -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/input_r_ce0 -into $input_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/input_r_address0 -into $input_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_conv2d_top/AESL_inst_conv2d/ap_start -into $blocksiggroup
add_wave /apatb_conv2d_top/AESL_inst_conv2d/ap_done -into $blocksiggroup
add_wave /apatb_conv2d_top/AESL_inst_conv2d/ap_idle -into $blocksiggroup
add_wave /apatb_conv2d_top/AESL_inst_conv2d/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_conv2d_top/AESL_inst_conv2d/ap_rst -into $resetgroup
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
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_output_group [add_wave_group output(memory) -into $tbcoutputgroup]
add_wave /apatb_conv2d_top/output_r_d1 -into $tb_output_group -radix hex
add_wave /apatb_conv2d_top/output_r_we1 -into $tb_output_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/output_r_ce1 -into $tb_output_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/output_r_address1 -into $tb_output_group -radix hex
add_wave /apatb_conv2d_top/output_r_d0 -into $tb_output_group -radix hex
add_wave /apatb_conv2d_top/output_r_we0 -into $tb_output_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/output_r_ce0 -into $tb_output_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/output_r_address0 -into $tb_output_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_kernel_group [add_wave_group kernel(memory) -into $tbcinputgroup]
add_wave /apatb_conv2d_top/kernel_q1 -into $tb_kernel_group -radix hex
add_wave /apatb_conv2d_top/kernel_ce1 -into $tb_kernel_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/kernel_address1 -into $tb_kernel_group -radix hex
add_wave /apatb_conv2d_top/kernel_q0 -into $tb_kernel_group -radix hex
add_wave /apatb_conv2d_top/kernel_ce0 -into $tb_kernel_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/kernel_address0 -into $tb_kernel_group -radix hex
set tb_input_group [add_wave_group input(memory) -into $tbcinputgroup]
add_wave /apatb_conv2d_top/input_r_q1 -into $tb_input_group -radix hex
add_wave /apatb_conv2d_top/input_r_ce1 -into $tb_input_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/input_r_address1 -into $tb_input_group -radix hex
add_wave /apatb_conv2d_top/input_r_q0 -into $tb_input_group -radix hex
add_wave /apatb_conv2d_top/input_r_ce0 -into $tb_input_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/input_r_address0 -into $tb_input_group -radix hex
save_wave_config conv2d.wcfg
run all
quit

