################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb1/src/userdef/usb1_host_dmacdrv.c \
../libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb1/src/userdef/usb1_host_userdef.c 

OBJS += \
./libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb1/src/userdef/usb1_host_dmacdrv.o \
./libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb1/src/userdef/usb1_host_userdef.o 

C_DEPS += \
./libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb1/src/userdef/usb1_host_dmacdrv.d \
./libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb1/src/userdef/usb1_host_userdef.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb1/src/userdef/%.o: ../libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/usb1/src/userdef/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


