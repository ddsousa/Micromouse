################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/common/usb0_host_dataio.c \
../libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/common/usb0_host_dma.c \
../libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/common/usb0_host_intrn.c \
../libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/common/usb0_host_lib.c 

OBJS += \
./libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/common/usb0_host_dataio.o \
./libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/common/usb0_host_dma.o \
./libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/common/usb0_host_intrn.o \
./libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/common/usb0_host_lib.o 

C_DEPS += \
./libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/common/usb0_host_dataio.d \
./libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/common/usb0_host_dma.d \
./libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/common/usb0_host_intrn.d \
./libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/common/usb0_host_lib.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/common/%.o: ../libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/common/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


