TOOLCHAIN_PATH=/usr/local/gcc-arm-none-eabi
BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cmake -DCMAKE_MODULE_PATH=$BASEDIR/cmake -DSTM32_CHIP=STM32F407VG -DTOOLCHAIN_PREFIX=$TOOLCHAIN_PATH -DCMAKE_BUILD_TYPE=Debug stm32-blinky  -DCMSIS_COMMON_INCLUDE_DIR=$BASEDIR/../STM32F4xx_DSP_StdPeriph_Lib_V1.8.0/Libraries/CMSIS/Include -DCMSIS_DEVICE_SOURCES=$BASEDIR/../STM32F4xx_DSP_StdPeriph_Lib_V1.8.0/Libraries/CMSIS/Include $@ -D -DCMAKE_TOOLCHAIN_FILE=$BASEDIR/cmake/gcc_stm32f4.cmake