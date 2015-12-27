################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/ohci_wrapp_RZ_A1.c \
../libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/ohci_wrapp_pipe.c 

OBJS += \
./libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/ohci_wrapp_RZ_A1.o \
./libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/ohci_wrapp_pipe.o 

C_DEPS += \
./libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/ohci_wrapp_RZ_A1.d \
./libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/ohci_wrapp_pipe.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/%.o: ../libraries/USBHost/USBHost/TARGET_RENESAS/TARGET_RZ_A1H/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


