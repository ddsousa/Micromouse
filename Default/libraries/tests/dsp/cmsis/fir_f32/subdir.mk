################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/tests/dsp/cmsis/fir_f32/data.cpp \
../libraries/tests/dsp/cmsis/fir_f32/main.cpp 

OBJS += \
./libraries/tests/dsp/cmsis/fir_f32/data.o \
./libraries/tests/dsp/cmsis/fir_f32/main.o 

CPP_DEPS += \
./libraries/tests/dsp/cmsis/fir_f32/data.d \
./libraries/tests/dsp/cmsis/fir_f32/main.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/tests/dsp/cmsis/fir_f32/%.o: ../libraries/tests/dsp/cmsis/fir_f32/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


