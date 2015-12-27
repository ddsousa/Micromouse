################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/mbed/targets/cmsis/TARGET_STM/TARGET_STM32F4XX/TOOLCHAIN_ARM_STD/sys.cpp 

OBJS += \
./libraries/mbed/targets/cmsis/TARGET_STM/TARGET_STM32F4XX/TOOLCHAIN_ARM_STD/sys.o 

CPP_DEPS += \
./libraries/mbed/targets/cmsis/TARGET_STM/TARGET_STM32F4XX/TOOLCHAIN_ARM_STD/sys.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/mbed/targets/cmsis/TARGET_STM/TARGET_STM32F4XX/TOOLCHAIN_ARM_STD/%.o: ../libraries/mbed/targets/cmsis/TARGET_STM/TARGET_STM32F4XX/TOOLCHAIN_ARM_STD/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -I"C:\David\Micromouse\NEW_CODE\Nucleo_blink_led\libraries\mbed\api" -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


