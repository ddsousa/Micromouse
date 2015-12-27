################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/tests/mbed/sd_perf_fhandle/main.cpp 

OBJS += \
./libraries/tests/mbed/sd_perf_fhandle/main.o 

CPP_DEPS += \
./libraries/tests/mbed/sd_perf_fhandle/main.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/tests/mbed/sd_perf_fhandle/%.o: ../libraries/tests/mbed/sd_perf_fhandle/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


