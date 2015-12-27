################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/tests/benchmarks/float_math/main.cpp 

OBJS += \
./libraries/tests/benchmarks/float_math/main.o 

CPP_DEPS += \
./libraries/tests/benchmarks/float_math/main.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/tests/benchmarks/float_math/%.o: ../libraries/tests/benchmarks/float_math/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


