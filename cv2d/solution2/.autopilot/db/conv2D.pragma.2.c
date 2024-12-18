# 1 "conv2D.c"
# 1 "conv2D.c" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 147 "<built-in>" 3
# 1 "<command line>" 1






# 1 "D:/VivadoHLS/Vivado/2018.3/common/technology/autopilot\\etc/autopilot_ssdm_op.h" 1
# 300 "D:/VivadoHLS/Vivado/2018.3/common/technology/autopilot\\etc/autopilot_ssdm_op.h"
    void _ssdm_op_IfRead() __attribute__ ((nothrow));
    void _ssdm_op_IfWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite() __attribute__ ((nothrow));


    void _ssdm_StreamRead() __attribute__ ((nothrow));
    void _ssdm_StreamWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite() __attribute__ ((nothrow));




    void _ssdm_op_MemShiftRead() __attribute__ ((nothrow));

    void _ssdm_op_Wait() __attribute__ ((nothrow));
    void _ssdm_op_Poll() __attribute__ ((nothrow));

    void _ssdm_op_Return() __attribute__ ((nothrow));


    void _ssdm_op_SpecSynModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef() __attribute__ ((nothrow));
    void _ssdm_op_SpecPort() __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection() __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel() __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive() __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst() __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap() __attribute__ ((nothrow));

    void _ssdm_op_SpecReset() __attribute__ ((nothrow));

    void _ssdm_op_SpecPlatform() __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain() __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain() __attribute__ ((nothrow));

    int _ssdm_op_SpecRegionBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopName() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopTripCount() __attribute__ ((nothrow));

    int _ssdm_op_SpecStateBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecInterface() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipeline() __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline() __attribute__ ((nothrow));


    void _ssdm_op_SpecLatency() __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel() __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol() __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence() __attribute__ ((nothrow));

    void _ssdm_op_SpecResource() __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit() __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue() __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore() __attribute__ ((nothrow));

    void _ssdm_op_SpecExt() __attribute__ ((nothrow));




    void _ssdm_SpecArrayDimSize() __attribute__ ((nothrow));

    void _ssdm_RegionBegin() __attribute__ ((nothrow));
    void _ssdm_RegionEnd() __attribute__ ((nothrow));

    void _ssdm_Unroll() __attribute__ ((nothrow));
    void _ssdm_UnrollRegion() __attribute__ ((nothrow));

    void _ssdm_InlineAll() __attribute__ ((nothrow));
    void _ssdm_InlineLoop() __attribute__ ((nothrow));
    void _ssdm_Inline() __attribute__ ((nothrow));
    void _ssdm_InlineSelf() __attribute__ ((nothrow));
    void _ssdm_InlineRegion() __attribute__ ((nothrow));

    void _ssdm_SpecArrayMap() __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition() __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape() __attribute__ ((nothrow));

    void _ssdm_SpecStream() __attribute__ ((nothrow));

    void _ssdm_SpecExpr() __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance() __attribute__ ((nothrow));

    void _ssdm_SpecDependence() __attribute__ ((nothrow));

    void _ssdm_SpecLoopMerge() __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten() __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind() __attribute__ ((nothrow));

    void _ssdm_SpecFuncInstantiation() __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer() __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract() __attribute__ ((nothrow));
    void _ssdm_SpecConstant() __attribute__ ((nothrow));

    void _ssdm_DataPack() __attribute__ ((nothrow));
    void _ssdm_SpecDataPack() __attribute__ ((nothrow));

    void _ssdm_op_SpecBitsMap() __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense() __attribute__ ((nothrow));
# 8 "<command line>" 2
# 1 "<built-in>" 2
# 1 "conv2D.c" 2
# 1 "./conv2D.h" 1
# 11 "./conv2D.h"
typedef int image_t;
typedef int kernel_t;
typedef int result_t;


void conv2d(image_t input[5][5],
            kernel_t kernel[3][3],
            result_t output[5 - 3 + 1][5 - 3 + 1]);
# 2 "conv2D.c" 2


void conv2d(image_t input[5][5],
            kernel_t kernel[3][3],
            result_t output[5 - 3 + 1][5 - 3 + 1]) {_ssdm_SpecArrayDimSize(input, 5);_ssdm_SpecArrayDimSize(kernel, 3);_ssdm_SpecArrayDimSize(output, 3);
_ssdm_op_SpecInterface(input, "s_axilite", 0, 0, "", 0, 0, "cv_io", "", "", 0, 0, 0, 0, "", "");
# 6 "conv2D.c"

_ssdm_op_SpecInterface(kernel, "s_axilite", 0, 0, "", 0, 0, "cv_io", "", "", 0, 0, 0, 0, "", "");
# 6 "conv2D.c"

_ssdm_op_SpecInterface(output, "s_axilite", 0, 0, "", 0, 0, "cv_io", "", "", 0, 0, 0, 0, "", "");
# 6 "conv2D.c"

_ssdm_op_SpecInterface(0, "s_axilite", 0, 0, "", 0, 0, "cv_io", "", "", 0, 0, 0, 0, "", "");
# 6 "conv2D.c"

_ssdm_op_SpecPipeline(-1, 1, 1, 0, "");
# 6 "conv2D.c"



    image_t line_buffer[3][5];







    conv2d_label0:for (int x = 0; x < 5 - 3 + 1; x++) {
_ssdm_SpecArrayPartition( line_buffer, 1, "COMPLETE", 0, "");
# 17 "conv2D.c"






        if (x == 0) {

            conv2d_label1:for (int i = 0; i < 3; i++) {
_ssdm_Unroll(0,0,0, "");
# 25 "conv2D.c"


                for (int j = 0; j < 5; j++) {
                    line_buffer[i][j] = input[i][j];
                }
            }
        } else {

            conv2d_label2:for (int i = 1; i < 3; i++) {
_ssdm_Unroll(0,0,0, "");
# 33 "conv2D.c"


                for (int j = 0; j < 5; j++) {
                    line_buffer[i-1][j] = line_buffer[i][j];
                }
            }

            for (int j = 0; j < 5; j++) {
                line_buffer[3 -1][j] = input[x + 3 -1][j];
            }
        }


        conv2d_label3:for (int y = 0; y < 5 - 3 + 1; y++) {
_ssdm_Unroll(0,0,0, "");
# 46 "conv2D.c"

            int sum = 0;




            for (int i = 0; i < 3; i++) {
                for (int j = 0; j < 3; j++) {
                    sum += line_buffer[i][y + j] * kernel[i][j];
                }
            }


            output[x][y] = sum;
        }
    }
}
