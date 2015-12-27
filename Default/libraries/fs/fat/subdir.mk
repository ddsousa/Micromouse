################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/fs/fat/FATDirHandle.cpp \
../libraries/fs/fat/FATFileHandle.cpp \
../libraries/fs/fat/FATFileSystem.cpp 

OBJS += \
./libraries/fs/fat/FATDirHandle.o \
./libraries/fs/fat/FATFileHandle.o \
./libraries/fs/fat/FATFileSystem.o 

CPP_DEPS += \
./libraries/fs/fat/FATDirHandle.d \
./libraries/fs/fat/FATFileHandle.d \
./libraries/fs/fat/FATFileSystem.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/fs/fat/%.o: ../libraries/fs/fat/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


