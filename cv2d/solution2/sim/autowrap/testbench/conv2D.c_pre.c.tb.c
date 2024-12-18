// ==============================================================
// File generated on Thu Dec 19 00:58:49 +0700 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#1 "D:/CodesNStuffs/Hardware_Des_Lab/project_base/conv2D.c"
#1 "D:/CodesNStuffs/Hardware_Des_Lab/project_base/conv2D.c" 1
#1 "<built-in>" 1
#1 "<built-in>" 3
#147 "<built-in>" 3
#1 "<command line>" 1
#1 "<built-in>" 2
#1 "D:/CodesNStuffs/Hardware_Des_Lab/project_base/conv2D.c" 2
#1 "D:/CodesNStuffs/Hardware_Des_Lab/project_base/conv2D.h" 1
#11 "D:/CodesNStuffs/Hardware_Des_Lab/project_base/conv2D.h"
typedef int image_t;
typedef int kernel_t;
typedef int result_t;


void conv2d(image_t input[5][5],
            kernel_t kernel[3][3],
            result_t output[5 - 3 + 1][5 - 3 + 1]);
#2 "D:/CodesNStuffs/Hardware_Des_Lab/project_base/conv2D.c" 2


void conv2d(image_t input[5][5],
            kernel_t kernel[3][3],
            result_t output[5 - 3 + 1][5 - 3 + 1]) {


    image_t line_buffer[3][5];


#pragma HLS PIPELINE


 for (int x = 0; x < 5 - 3 + 1; x++) {


#pragma HLS ARRAY_PARTITION variable=line_buffer complete dim=1


 if (x == 0) {

            for (int i = 0; i < 3; i++) {
#pragma HLS UNROLL
 for (int j = 0; j < 5; j++) {
                    line_buffer[i][j] = input[i][j];
                }
            }
        } else {

            for (int i = 1; i < 3; i++) {
#pragma HLS UNROLL
 for (int j = 0; j < 5; j++) {
                    line_buffer[i-1][j] = line_buffer[i][j];
                }
            }

            for (int j = 0; j < 5; j++) {
                line_buffer[3 -1][j] = input[x + 3 -1][j];
            }
        }


        for (int y = 0; y < 5 - 3 + 1; y++) {
            int sum = 0;


#pragma HLS UNROLL

 for (int i = 0; i < 3; i++) {
                for (int j = 0; j < 3; j++) {
                    sum += line_buffer[i][y + j] * kernel[i][j];
                }
            }


            output[x][y] = sum;
        }
    }
}
