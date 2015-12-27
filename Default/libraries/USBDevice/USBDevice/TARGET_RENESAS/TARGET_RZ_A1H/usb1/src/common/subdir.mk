################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb1/src/common/usb1_function_dataio.c \
../libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb1/src/common/usb1_function_dma.c \
../libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb1/src/common/usb1_function_intrn.c \
../libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb1/src/common/usb1_function_lib.c 

OBJS += \
./libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb1/src/common/usb1_function_dataio.o \
./libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb1/src/common/usb1_function_dma.o \
./libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb1/src/common/usb1_function_intrn.o \
./libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb1/src/common/usb1_function_lib.o 

C_DEPS += \
./libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb1/src/common/usb1_function_dataio.d \
./libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb1/src/common/usb1_function_dma.d \
./libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb1/src/common/usb1_function_intrn.d \
./libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb1/src/common/usb1_function_lib.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb1/src/common/%.o: ../libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb1/src/common/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


