################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/TARGET_MTS_MDOT_F405RG/PeripheralPins.c 

O_SRCS += \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/TARGET_MTS_MDOT_F405RG/PeripheralPins.o 

OBJS += \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/TARGET_MTS_MDOT_F405RG/PeripheralPins.o 

C_DEPS += \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/TARGET_MTS_MDOT_F405RG/PeripheralPins.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/TARGET_MTS_MDOT_F405RG/%.o: ../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/TARGET_MTS_MDOT_F405RG/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O2  -g -I"C:\David\Micromouse\NEW_CODE\Nucleo_blink_led\libraries\mbed\api" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


