################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/host/usb0_host_controlrw.c \
../libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/host/usb0_host_drv_api.c \
../libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/host/usb0_host_global.c \
../libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/host/usb0_host_usbint.c \
../libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/host/usb0_host_usbsig.c 

OBJS += \
./libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/host/usb0_host_controlrw.o \
./libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/host/usb0_host_drv_api.o \
./libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/host/usb0_host_global.o \
./libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/host/usb0_host_usbint.o \
./libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/host/usb0_host_usbsig.o 

C_DEPS += \
./libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/host/usb0_host_controlrw.d \
./libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/host/usb0_host_drv_api.d \
./libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/host/usb0_host_global.d \
./libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/host/usb0_host_usbint.d \
./libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/host/usb0_host_usbsig.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/host/%.o: ../libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/host/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


