#include <stdio.h>
#include <assert.h>
#include "conv2D.h"

int main() {
    // Input image (5x5)
    image_t input[IMAGE_ROWS][IMAGE_COLS] = {
        {1, 2, 3, 4, 5},
        {6, 7, 8, 9, 10},
        {11, 12, 13, 14, 15},
        {16, 17, 18, 19, 20},
        {21, 22, 23, 24, 25}
    };

    // Kernel (3x3)
    kernel_t kernel[KERNEL_ROWS][KERNEL_COLS] = {
        {1, 0, 1},
        {0, 1, 0},
        {1, 0, 1}
    };

    // Expected output for verification (after removing padding)
    result_t expected_output[IMAGE_ROWS - KERNEL_ROWS + 1][IMAGE_COLS - KERNEL_COLS + 1] = {
        { 35, 40, 45 },
        { 60, 65, 70 },
        { 85, 90, 95 }
    };

    // Output image (no padding)
    result_t output[IMAGE_ROWS - KERNEL_ROWS + 1][IMAGE_COLS - KERNEL_COLS + 1] = {0};

    // Perform 2D convolution without padding
    printf("Performing 2D convolution without padding...\n");
    conv2d(input, kernel, output);

    // Print the input image
    printf("Input Image:\n");
    for (int x1 = 0; x1 < IMAGE_ROWS; x1++) {
        for (int y1 = 0; y1 < IMAGE_COLS; y1++) {
            printf("%4d ", input[x1][y1]);
        }
        printf("\n");
    }

    // Print the kernel
    printf("\nKernel:\n");
    for (int x2 = 0; x2 < KERNEL_ROWS; x2++) {
        for (int y2 = 0; y2 < KERNEL_COLS; y2++) {
            printf("%4d ", kernel[x2][y2]);
        }
        printf("\n");
    }

    // Print the calculated output image
    printf("\nCalculated Output Image without Padding:\n");
    for (int x3 = 0; x3 < IMAGE_ROWS - KERNEL_ROWS + 1; x3++) {
        for (int y3 = 0; y3 < IMAGE_COLS - KERNEL_COLS + 1; y3++) {
            printf("%4d ", output[x3][y3]);
        }
        printf("\n");
    }

    // Verify the result against the expected output
    printf("\nVerifying the calculated result...\n");
    for (int x4 = 0; x4 < IMAGE_ROWS - KERNEL_ROWS + 1; x4++) {
        for (int y4 = 0; y4 < IMAGE_COLS - KERNEL_COLS + 1; y4++) {
            if (output[x4][y4] != expected_output[x4][y4]) {
                printf("Error: Mismatch at (%d, %d): Expected %d, Got %d\n", x4, y4, expected_output[x4][y4], output[x4][y4]);
                assert(output[x4][y4] == expected_output[x4][y4]);
            }
        }
    }

    printf("All results are correct!\n");
    return 0;
}
