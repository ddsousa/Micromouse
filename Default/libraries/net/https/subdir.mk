################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/net/https/HTTPHeader.cpp \
../libraries/net/https/HTTPSClient.cpp 

OBJS += \
./libraries/net/https/HTTPHeader.o \
./libraries/net/https/HTTPSClient.o 

CPP_DEPS += \
./libraries/net/https/HTTPHeader.d \
./libraries/net/https/HTTPSClient.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/net/https/%.o: ../libraries/net/https/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


