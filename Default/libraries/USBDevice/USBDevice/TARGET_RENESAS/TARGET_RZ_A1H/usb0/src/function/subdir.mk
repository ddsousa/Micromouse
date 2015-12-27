################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/function/usb0_function_api.c \
../libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/function/usb0_function_controlrw.c \
../libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/function/usb0_function_global.c \
../libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/function/usb0_function_sig.c \
../libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/function/usb0_function_sub.c 

OBJS += \
./libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/function/usb0_function_api.o \
./libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/function/usb0_function_controlrw.o \
./libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/function/usb0_function_global.o \
./libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/function/usb0_function_sig.o \
./libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/function/usb0_function_sub.o 

C_DEPS += \
./libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/function/usb0_function_api.d \
./libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/function/usb0_function_controlrw.d \
./libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/function/usb0_function_global.d \
./libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/function/usb0_function_sig.d \
./libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/function/usb0_function_sub.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/function/%.o: ../libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/function/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


