################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/fs/fat/ChaN/ccsbcs.cpp \
../libraries/fs/fat/ChaN/diskio.cpp \
../libraries/fs/fat/ChaN/ff.cpp 

OBJS += \
./libraries/fs/fat/ChaN/ccsbcs.o \
./libraries/fs/fat/ChaN/diskio.o \
./libraries/fs/fat/ChaN/ff.o 

CPP_DEPS += \
./libraries/fs/fat/ChaN/ccsbcs.d \
./libraries/fs/fat/ChaN/diskio.d \
./libraries/fs/fat/ChaN/ff.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/fs/fat/ChaN/%.o: ../libraries/fs/fat/ChaN/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


