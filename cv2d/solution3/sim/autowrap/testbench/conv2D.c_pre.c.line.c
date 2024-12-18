#pragma line 1 "D:/CodesNStuffs/Hardware_Des_Lab/project_base/conv2D.c"
#pragma line 1 "D:/CodesNStuffs/Hardware_Des_Lab/project_base/conv2D.c" 1
#pragma line 1 "<built-in>" 1
#pragma line 1 "<built-in>" 3
#pragma line 147 "<built-in>" 3
#pragma line 1 "<command line>" 1
#pragma line 1 "<built-in>" 2
#pragma line 1 "D:/CodesNStuffs/Hardware_Des_Lab/project_base/conv2D.c" 2
#pragma line 1 "D:/CodesNStuffs/Hardware_Des_Lab/project_base/conv2D.h" 1
#pragma line 11 "D:/CodesNStuffs/Hardware_Des_Lab/project_base/conv2D.h"
typedef int image_t;
typedef int kernel_t;
typedef int result_t;
#pragma empty_line
#pragma empty_line
void conv2d(image_t input[5][5],
            kernel_t kernel[3][3],
            result_t output[5 - 3 + 1][5 - 3 + 1]);
#pragma line 2 "D:/CodesNStuffs/Hardware_Des_Lab/project_base/conv2D.c" 2
#pragma empty_line
#pragma empty_line
void conv2d(image_t input[5][5],
            kernel_t kernel[3][3],
            result_t output[5 - 3 + 1][5 - 3 + 1]) {
#pragma HLS INTERFACE s_axilite port=return bundle=cv_io
#pragma HLS INTERFACE s_axilite port=output bundle=cv_io
#pragma HLS INTERFACE s_axilite port=kernel bundle=cv_io
#pragma HLS INTERFACE s_axilite port=input bundle=cv_io
#pragma empty_line
#pragma empty_line
 image_t line_buffer[3][5];
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    for (int x = 0; x < 5 - 3 + 1; x++) {
#pragma empty_line
#pragma empty_line
#pragma HLS ARRAY_PARTITION variable=line_buffer complete dim=1
#pragma empty_line
#pragma empty_line
 if (x == 0) {
#pragma empty_line
            for (int i = 0; i < 3; i++) {
#pragma HLS UNROLL
 for (int j = 0; j < 5; j++) {
                    line_buffer[i][j] = input[i][j];
                }
            }
        } else {
#pragma empty_line
            for (int i = 1; i < 3; i++) {
#pragma HLS UNROLL
 for (int j = 0; j < 5; j++) {
                    line_buffer[i-1][j] = line_buffer[i][j];
                }
            }
#pragma empty_line
            for (int j = 0; j < 5; j++) {
                line_buffer[3 -1][j] = input[x + 3 -1][j];
            }
        }
#pragma empty_line
#pragma empty_line
        for (int y = 0; y < 5 - 3 + 1; y++) {
            int sum = 0;
#pragma empty_line
#pragma empty_line
#pragma HLS UNROLL
#pragma empty_line
 for (int i = 0; i < 3; i++) {
                for (int j = 0; j < 3; j++) {
                    sum += line_buffer[i][y + j] * kernel[i][j];
                }
            }
#pragma empty_line
#pragma empty_line
            output[x][y] = sum;
        }
    }
}
