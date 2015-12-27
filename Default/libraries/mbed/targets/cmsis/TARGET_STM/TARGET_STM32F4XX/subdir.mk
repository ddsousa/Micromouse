################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/mbed/targets/cmsis/TARGET_STM/TARGET_STM32F4XX/cmsis_nvic.c \
../libraries/mbed/targets/cmsis/TARGET_STM/TARGET_STM32F4XX/system_stm32f4xx.c 

OBJS += \
./libraries/mbed/targets/cmsis/TARGET_STM/TARGET_STM32F4XX/cmsis_nvic.o \
./libraries/mbed/targets/cmsis/TARGET_STM/TARGET_STM32F4XX/system_stm32f4xx.o 

C_DEPS += \
./libraries/mbed/targets/cmsis/TARGET_STM/TARGET_STM32F4XX/cmsis_nvic.d \
./libraries/mbed/targets/cmsis/TARGET_STM/TARGET_STM32F4XX/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/mbed/targets/cmsis/TARGET_STM/TARGET_STM32F4XX/%.o: ../libraries/mbed/targets/cmsis/TARGET_STM/TARGET_STM32F4XX/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O2  -g -I"C:\David\Micromouse\NEW_CODE\Nucleo_blink_led\libraries\mbed\api" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


