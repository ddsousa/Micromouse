################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/userdef/usb0_function_dmacdrv.c \
../libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/userdef/usb0_function_userdef.c 

OBJS += \
./libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/userdef/usb0_function_dmacdrv.o \
./libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/userdef/usb0_function_userdef.o 

C_DEPS += \
./libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/userdef/usb0_function_dmacdrv.d \
./libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/userdef/usb0_function_userdef.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/userdef/%.o: ../libraries/USBDevice/USBDevice/TARGET_RENESAS/TARGET_RZ_A1H/usb0/src/userdef/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


