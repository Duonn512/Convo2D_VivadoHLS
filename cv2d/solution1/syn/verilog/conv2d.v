// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="conv2d,hls_ip_2018_3,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.510000,HLS_SYN_LAT=514,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=3,HLS_SYN_FF=331,HLS_SYN_LUT=750,HLS_VERSION=2018_3}" *)

module conv2d (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        input_r_address0,
        input_r_ce0,
        input_r_q0,
        kernel_address0,
        kernel_ce0,
        kernel_q0,
        output_r_address0,
        output_r_ce0,
        output_r_we0,
        output_r_d0
);

parameter    ap_ST_fsm_state1 = 16'd1;
parameter    ap_ST_fsm_state2 = 16'd2;
parameter    ap_ST_fsm_state3 = 16'd4;
parameter    ap_ST_fsm_state4 = 16'd8;
parameter    ap_ST_fsm_state5 = 16'd16;
parameter    ap_ST_fsm_state6 = 16'd32;
parameter    ap_ST_fsm_state7 = 16'd64;
parameter    ap_ST_fsm_state8 = 16'd128;
parameter    ap_ST_fsm_state9 = 16'd256;
parameter    ap_ST_fsm_state10 = 16'd512;
parameter    ap_ST_fsm_state11 = 16'd1024;
parameter    ap_ST_fsm_state12 = 16'd2048;
parameter    ap_ST_fsm_state13 = 16'd4096;
parameter    ap_ST_fsm_state14 = 16'd8192;
parameter    ap_ST_fsm_state15 = 16'd16384;
parameter    ap_ST_fsm_state16 = 16'd32768;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] input_r_address0;
output   input_r_ce0;
input  [31:0] input_r_q0;
output  [3:0] kernel_address0;
output   kernel_ce0;
input  [31:0] kernel_q0;
output  [3:0] output_r_address0;
output   output_r_ce0;
output   output_r_we0;
output  [31:0] output_r_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[4:0] input_r_address0;
reg input_r_ce0;
reg kernel_ce0;
reg output_r_ce0;
reg output_r_we0;

(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] x_cast_fu_281_p1;
reg   [2:0] x_cast_reg_678;
wire    ap_CS_fsm_state2;
wire   [1:0] x_1_fu_291_p2;
reg   [1:0] x_1_reg_686;
wire   [0:0] tmp_fu_297_p2;
reg   [0:0] tmp_reg_691;
wire   [0:0] exitcond8_fu_285_p2;
wire   [4:0] tmp_10_fu_325_p2;
reg   [4:0] tmp_10_reg_698;
wire    ap_CS_fsm_state3;
wire   [0:0] exitcond5_fu_303_p2;
wire   [4:0] tmp_13_fu_353_p2;
reg   [4:0] tmp_13_reg_703;
wire   [5:0] tmp_7_fu_380_p2;
reg   [5:0] tmp_7_reg_708;
wire   [2:0] j_3_fu_392_p2;
reg   [2:0] j_3_reg_716;
wire    ap_CS_fsm_state4;
wire   [0:0] exitcond4_fu_386_p2;
wire   [4:0] tmp_20_fu_412_p2;
reg   [4:0] tmp_20_reg_726;
wire   [1:0] i_2_fu_417_p2;
wire   [2:0] j_2_fu_433_p2;
reg   [2:0] j_2_reg_739;
wire    ap_CS_fsm_state6;
wire   [0:0] exitcond3_fu_427_p2;
wire   [4:0] tmp_22_fu_469_p2;
reg   [4:0] tmp_22_reg_749;
wire   [1:0] i_1_fu_496_p2;
reg   [1:0] i_1_reg_757;
wire    ap_CS_fsm_state8;
wire   [4:0] tmp_4_fu_518_p2;
reg   [4:0] tmp_4_reg_762;
wire   [0:0] exitcond7_fu_490_p2;
wire   [2:0] j_1_fu_530_p2;
reg   [2:0] j_1_reg_770;
wire    ap_CS_fsm_state9;
wire   [63:0] tmp_28_cast_fu_545_p1;
reg   [63:0] tmp_28_cast_reg_775;
wire   [0:0] exitcond6_fu_524_p2;
wire   [2:0] y_cast_fu_550_p1;
reg   [2:0] y_cast_reg_785;
wire    ap_CS_fsm_state11;
wire   [1:0] y_1_fu_560_p2;
reg   [1:0] y_1_reg_793;
wire   [1:0] i_3_fu_572_p2;
reg   [1:0] i_3_reg_801;
wire    ap_CS_fsm_state12;
wire   [4:0] tmp_25_fu_594_p2;
reg   [4:0] tmp_25_reg_806;
wire   [0:0] exitcond1_fu_566_p2;
wire   [4:0] tmp_26_fu_600_p2;
reg   [4:0] tmp_26_reg_811;
wire   [1:0] j_4_fu_630_p2;
reg   [1:0] j_4_reg_819;
wire    ap_CS_fsm_state13;
wire   [0:0] exitcond_fu_624_p2;
wire   [31:0] line_buffer_q0;
reg  signed [31:0] line_buffer_load_1_reg_834;
wire    ap_CS_fsm_state14;
reg  signed [31:0] kernel_load_reg_839;
wire   [31:0] tmp_15_fu_669_p2;
reg   [31:0] tmp_15_reg_844;
wire    ap_CS_fsm_state15;
wire   [31:0] sum_2_fu_673_p2;
wire    ap_CS_fsm_state16;
reg   [3:0] line_buffer_address0;
reg    line_buffer_ce0;
reg    line_buffer_we0;
reg   [31:0] line_buffer_d0;
reg   [1:0] x_reg_153;
wire   [0:0] exitcond2_fu_554_p2;
reg   [1:0] i1_reg_165;
reg   [2:0] j2_reg_177;
wire    ap_CS_fsm_state5;
reg   [2:0] j3_reg_188;
wire    ap_CS_fsm_state7;
reg   [1:0] i_reg_200;
reg   [2:0] j_reg_211;
wire    ap_CS_fsm_state10;
reg   [1:0] y_reg_222;
reg   [31:0] sum_reg_234;
reg   [1:0] i4_reg_247;
reg   [31:0] sum_1_reg_258;
reg   [1:0] j5_reg_270;
wire   [63:0] tmp_31_cast_fu_407_p1;
wire   [63:0] tmp_32_cast_fu_423_p1;
wire   [63:0] tmp_29_cast_fu_448_p1;
wire   [63:0] tmp_30_cast_fu_485_p1;
wire  signed [63:0] tmp_35_cast_fu_615_p1;
wire   [63:0] tmp_40_cast_fu_650_p1;
wire  signed [63:0] tmp_41_cast_fu_664_p1;
wire   [3:0] tmp_9_fu_313_p3;
wire   [4:0] tmp_4_cast_fu_309_p1;
wire   [4:0] p_shl4_cast_fu_321_p1;
wire   [1:0] tmp_5_fu_331_p2;
wire   [3:0] tmp_11_fu_341_p3;
wire   [4:0] tmp_6_cast_fu_337_p1;
wire   [4:0] p_shl3_cast_fu_349_p1;
wire   [2:0] tmp_2_fu_359_p2;
wire   [4:0] tmp_6_fu_368_p3;
wire   [5:0] tmp_3_cast_fu_364_p1;
wire   [5:0] p_shl2_cast_fu_376_p1;
wire   [4:0] tmp_7_cast_fu_398_p1;
wire   [4:0] tmp_18_fu_402_p2;
wire   [5:0] tmp_cast_fu_439_p1;
wire   [5:0] tmp_16_fu_443_p2;
wire   [3:0] tmp_21_fu_457_p3;
wire   [4:0] p_shl5_cast_fu_465_p1;
wire   [4:0] tmp_9_cast_fu_453_p1;
wire   [3:0] tmp_cast9_fu_475_p1;
wire   [3:0] tmp_17_fu_479_p2;
wire   [3:0] tmp_3_fu_506_p3;
wire   [4:0] tmp_1_cast_fu_502_p1;
wire   [4:0] p_shl_cast_fu_514_p1;
wire   [4:0] tmp_8_cast_fu_536_p1;
wire   [4:0] tmp_14_fu_540_p2;
wire   [3:0] tmp_24_fu_582_p3;
wire   [4:0] p_shl7_cast_fu_590_p1;
wire   [4:0] tmp_11_cast_fu_578_p1;
wire   [4:0] tmp_10_cast_fu_606_p1;
wire   [4:0] tmp_23_fu_610_p2;
wire   [2:0] j5_cast_fu_620_p1;
wire   [2:0] tmp_12_fu_636_p2;
wire   [4:0] tmp_13_cast_fu_641_p1;
wire   [4:0] tmp_27_fu_645_p2;
wire   [4:0] tmp_14_cast_fu_655_p1;
wire   [4:0] tmp_28_fu_659_p2;
reg   [15:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 16'd1;
end

conv2d_line_buffer #(
    .DataWidth( 32 ),
    .AddressRange( 15 ),
    .AddressWidth( 4 ))
line_buffer_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(line_buffer_address0),
    .ce0(line_buffer_ce0),
    .we0(line_buffer_we0),
    .d0(line_buffer_d0),
    .q0(line_buffer_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond8_fu_285_p2 == 1'd0) & (tmp_fu_297_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i1_reg_165 <= 2'd1;
    end else if (((exitcond4_fu_386_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        i1_reg_165 <= i_2_fu_417_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_624_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
        i4_reg_247 <= i_3_reg_801;
    end else if (((exitcond2_fu_554_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        i4_reg_247 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond8_fu_285_p2 == 1'd0) & (tmp_fu_297_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i_reg_200 <= 2'd0;
    end else if (((exitcond6_fu_524_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
        i_reg_200 <= i_1_reg_757;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        j2_reg_177 <= j_3_reg_716;
    end else if (((exitcond5_fu_303_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        j2_reg_177 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond5_fu_303_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        j3_reg_188 <= 3'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        j3_reg_188 <= j_2_reg_739;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_566_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        j5_reg_270 <= 2'd0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        j5_reg_270 <= j_4_reg_819;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        j_reg_211 <= j_1_reg_770;
    end else if (((exitcond7_fu_490_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        j_reg_211 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_566_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        sum_1_reg_258 <= sum_reg_234;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        sum_1_reg_258 <= sum_2_fu_673_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_624_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_reg_234 <= sum_1_reg_258;
    end else if (((exitcond2_fu_554_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        sum_reg_234 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_554_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state11))) begin
        x_reg_153 <= x_1_reg_686;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        x_reg_153 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_566_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state12))) begin
        y_reg_222 <= y_1_reg_793;
    end else if (((1'b1 == ap_CS_fsm_state6) & ((exitcond3_fu_427_p2 == 1'd1) | (tmp_reg_691 == 1'd1)))) begin
        y_reg_222 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        i_1_reg_757 <= i_1_fu_496_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        i_3_reg_801 <= i_3_fu_572_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        j_1_reg_770 <= j_1_fu_530_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_reg_691 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        j_2_reg_739 <= j_2_fu_433_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        j_3_reg_716 <= j_3_fu_392_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        j_4_reg_819 <= j_4_fu_630_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        kernel_load_reg_839 <= kernel_q0;
        line_buffer_load_1_reg_834 <= line_buffer_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond5_fu_303_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp_10_reg_698 <= tmp_10_fu_325_p2;
        tmp_13_reg_703 <= tmp_13_fu_353_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        tmp_15_reg_844 <= tmp_15_fu_669_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond4_fu_386_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        tmp_20_reg_726 <= tmp_20_fu_412_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & ((exitcond3_fu_427_p2 == 1'd1) | (tmp_reg_691 == 1'd1)))) begin
        tmp_22_reg_749 <= tmp_22_fu_469_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_566_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        tmp_25_reg_806 <= tmp_25_fu_594_p2;
        tmp_26_reg_811 <= tmp_26_fu_600_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond6_fu_524_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        tmp_28_cast_reg_775[4 : 0] <= tmp_28_cast_fu_545_p1[4 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond7_fu_490_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        tmp_4_reg_762 <= tmp_4_fu_518_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond5_fu_303_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp_7_reg_708 <= tmp_7_fu_380_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond8_fu_285_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_reg_691 <= tmp_fu_297_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        x_1_reg_686 <= x_1_fu_291_p2;
        x_cast_reg_678[1 : 0] <= x_cast_fu_281_p1[1 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        y_1_reg_793 <= y_1_fu_560_p2;
        y_cast_reg_785[1 : 0] <= y_cast_fu_550_p1[1 : 0];
    end
end

always @ (*) begin
    if (((exitcond8_fu_285_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond8_fu_285_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        input_r_address0 = tmp_28_cast_fu_545_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        input_r_address0 = tmp_29_cast_fu_448_p1;
    end else begin
        input_r_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state6))) begin
        input_r_ce0 = 1'b1;
    end else begin
        input_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        kernel_ce0 = 1'b1;
    end else begin
        kernel_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        line_buffer_address0 = tmp_40_cast_fu_650_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        line_buffer_address0 = tmp_28_cast_reg_775;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        line_buffer_address0 = tmp_30_cast_fu_485_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        line_buffer_address0 = tmp_32_cast_fu_423_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        line_buffer_address0 = tmp_31_cast_fu_407_p1;
    end else begin
        line_buffer_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state13))) begin
        line_buffer_ce0 = 1'b1;
    end else begin
        line_buffer_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state7))) begin
        line_buffer_d0 = input_r_q0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        line_buffer_d0 = line_buffer_q0;
    end else begin
        line_buffer_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5))) begin
        line_buffer_we0 = 1'b1;
    end else begin
        line_buffer_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        output_r_ce0 = 1'b1;
    end else begin
        output_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond1_fu_566_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state12))) begin
        output_r_we0 = 1'b1;
    end else begin
        output_r_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((exitcond8_fu_285_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((exitcond8_fu_285_p2 == 1'd0) & (tmp_fu_297_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((exitcond5_fu_303_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((exitcond4_fu_386_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & ((exitcond3_fu_427_p2 == 1'd1) | (tmp_reg_691 == 1'd1)))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state8 : begin
            if (((exitcond7_fu_490_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((exitcond6_fu_524_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state11 : begin
            if (((exitcond2_fu_554_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state12 : begin
            if (((exitcond1_fu_566_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state13 : begin
            if (((exitcond_fu_624_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign exitcond1_fu_566_p2 = ((i4_reg_247 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond2_fu_554_p2 = ((y_reg_222 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond3_fu_427_p2 = ((j3_reg_188 == 3'd5) ? 1'b1 : 1'b0);

assign exitcond4_fu_386_p2 = ((j2_reg_177 == 3'd5) ? 1'b1 : 1'b0);

assign exitcond5_fu_303_p2 = ((i1_reg_165 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond6_fu_524_p2 = ((j_reg_211 == 3'd5) ? 1'b1 : 1'b0);

assign exitcond7_fu_490_p2 = ((i_reg_200 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond8_fu_285_p2 = ((x_reg_153 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond_fu_624_p2 = ((j5_reg_270 == 2'd3) ? 1'b1 : 1'b0);

assign i_1_fu_496_p2 = (i_reg_200 + 2'd1);

assign i_2_fu_417_p2 = (i1_reg_165 + 2'd1);

assign i_3_fu_572_p2 = (i4_reg_247 + 2'd1);

assign j5_cast_fu_620_p1 = j5_reg_270;

assign j_1_fu_530_p2 = (j_reg_211 + 3'd1);

assign j_2_fu_433_p2 = (j3_reg_188 + 3'd1);

assign j_3_fu_392_p2 = (j2_reg_177 + 3'd1);

assign j_4_fu_630_p2 = (j5_reg_270 + 2'd1);

assign kernel_address0 = tmp_41_cast_fu_664_p1;

assign output_r_address0 = tmp_35_cast_fu_615_p1;

assign output_r_d0 = sum_reg_234;

assign p_shl2_cast_fu_376_p1 = tmp_6_fu_368_p3;

assign p_shl3_cast_fu_349_p1 = tmp_11_fu_341_p3;

assign p_shl4_cast_fu_321_p1 = tmp_9_fu_313_p3;

assign p_shl5_cast_fu_465_p1 = tmp_21_fu_457_p3;

assign p_shl7_cast_fu_590_p1 = tmp_24_fu_582_p3;

assign p_shl_cast_fu_514_p1 = tmp_3_fu_506_p3;

assign sum_2_fu_673_p2 = (sum_1_reg_258 + tmp_15_reg_844);

assign tmp_10_cast_fu_606_p1 = y_reg_222;

assign tmp_10_fu_325_p2 = (tmp_4_cast_fu_309_p1 + p_shl4_cast_fu_321_p1);

assign tmp_11_cast_fu_578_p1 = i4_reg_247;

assign tmp_11_fu_341_p3 = {{tmp_5_fu_331_p2}, {2'd0}};

assign tmp_12_fu_636_p2 = (j5_cast_fu_620_p1 + y_cast_reg_785);

assign tmp_13_cast_fu_641_p1 = tmp_12_fu_636_p2;

assign tmp_13_fu_353_p2 = (tmp_6_cast_fu_337_p1 + p_shl3_cast_fu_349_p1);

assign tmp_14_cast_fu_655_p1 = j5_reg_270;

assign tmp_14_fu_540_p2 = (tmp_4_reg_762 + tmp_8_cast_fu_536_p1);

assign tmp_15_fu_669_p2 = ($signed(kernel_load_reg_839) * $signed(line_buffer_load_1_reg_834));

assign tmp_16_fu_443_p2 = (tmp_7_reg_708 + tmp_cast_fu_439_p1);

assign tmp_17_fu_479_p2 = ($signed(tmp_cast9_fu_475_p1) + $signed(4'd10));

assign tmp_18_fu_402_p2 = (tmp_10_reg_698 + tmp_7_cast_fu_398_p1);

assign tmp_1_cast_fu_502_p1 = i_reg_200;

assign tmp_20_fu_412_p2 = (tmp_13_reg_703 + tmp_7_cast_fu_398_p1);

assign tmp_21_fu_457_p3 = {{x_reg_153}, {2'd0}};

assign tmp_22_fu_469_p2 = (p_shl5_cast_fu_465_p1 - tmp_9_cast_fu_453_p1);

assign tmp_23_fu_610_p2 = (tmp_22_reg_749 + tmp_10_cast_fu_606_p1);

assign tmp_24_fu_582_p3 = {{i4_reg_247}, {2'd0}};

assign tmp_25_fu_594_p2 = (p_shl7_cast_fu_590_p1 - tmp_11_cast_fu_578_p1);

assign tmp_26_fu_600_p2 = (tmp_11_cast_fu_578_p1 + p_shl7_cast_fu_590_p1);

assign tmp_27_fu_645_p2 = (tmp_26_reg_811 + tmp_13_cast_fu_641_p1);

assign tmp_28_cast_fu_545_p1 = tmp_14_fu_540_p2;

assign tmp_28_fu_659_p2 = (tmp_25_reg_806 + tmp_14_cast_fu_655_p1);

assign tmp_29_cast_fu_448_p1 = tmp_16_fu_443_p2;

assign tmp_2_fu_359_p2 = (x_cast_reg_678 + 3'd2);

assign tmp_30_cast_fu_485_p1 = tmp_17_fu_479_p2;

assign tmp_31_cast_fu_407_p1 = tmp_18_fu_402_p2;

assign tmp_32_cast_fu_423_p1 = tmp_20_reg_726;

assign tmp_35_cast_fu_615_p1 = $signed(tmp_23_fu_610_p2);

assign tmp_3_cast_fu_364_p1 = tmp_2_fu_359_p2;

assign tmp_3_fu_506_p3 = {{i_reg_200}, {2'd0}};

assign tmp_40_cast_fu_650_p1 = tmp_27_fu_645_p2;

assign tmp_41_cast_fu_664_p1 = $signed(tmp_28_fu_659_p2);

assign tmp_4_cast_fu_309_p1 = i1_reg_165;

assign tmp_4_fu_518_p2 = (tmp_1_cast_fu_502_p1 + p_shl_cast_fu_514_p1);

assign tmp_5_fu_331_p2 = ($signed(i1_reg_165) + $signed(2'd3));

assign tmp_6_cast_fu_337_p1 = tmp_5_fu_331_p2;

assign tmp_6_fu_368_p3 = {{tmp_2_fu_359_p2}, {2'd0}};

assign tmp_7_cast_fu_398_p1 = j2_reg_177;

assign tmp_7_fu_380_p2 = (tmp_3_cast_fu_364_p1 + p_shl2_cast_fu_376_p1);

assign tmp_8_cast_fu_536_p1 = j_reg_211;

assign tmp_9_cast_fu_453_p1 = x_reg_153;

assign tmp_9_fu_313_p3 = {{i1_reg_165}, {2'd0}};

assign tmp_cast9_fu_475_p1 = j3_reg_188;

assign tmp_cast_fu_439_p1 = j3_reg_188;

assign tmp_fu_297_p2 = ((x_reg_153 == 2'd0) ? 1'b1 : 1'b0);

assign x_1_fu_291_p2 = (x_reg_153 + 2'd1);

assign x_cast_fu_281_p1 = x_reg_153;

assign y_1_fu_560_p2 = (y_reg_222 + 2'd1);

assign y_cast_fu_550_p1 = y_reg_222;

always @ (posedge ap_clk) begin
    x_cast_reg_678[2] <= 1'b0;
    tmp_28_cast_reg_775[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    y_cast_reg_785[2] <= 1'b0;
end

endmodule //conv2d
