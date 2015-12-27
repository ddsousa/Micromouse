################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/tests/peripherals/MMA7660/MMA7660.cpp 

OBJS += \
./libraries/tests/peripherals/MMA7660/MMA7660.o 

CPP_DEPS += \
./libraries/tests/peripherals/MMA7660/MMA7660.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/tests/peripherals/MMA7660/%.o: ../libraries/tests/peripherals/MMA7660/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


