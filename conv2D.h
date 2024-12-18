#ifndef CONV2D_H
#define CONV2D_H

// Define the image size and kernel size
#define IMAGE_ROWS 5
#define IMAGE_COLS 5
#define KERNEL_ROWS 3
#define KERNEL_COLS 3

// Define the data types for the image, kernel, and result
typedef int image_t;
typedef int kernel_t;
typedef int result_t;

// Function declaration
void conv2d(image_t input[IMAGE_ROWS][IMAGE_COLS],
            kernel_t kernel[KERNEL_ROWS][KERNEL_COLS],
            result_t output[IMAGE_ROWS - KERNEL_ROWS + 1][IMAGE_COLS - KERNEL_COLS + 1]);

#endif
