################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/tests/net/cellular/http/common/HTTPClient/HTTPClient.cpp 

OBJS += \
./libraries/tests/net/cellular/http/common/HTTPClient/HTTPClient.o 

CPP_DEPS += \
./libraries/tests/net/cellular/http/common/HTTPClient/HTTPClient.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/tests/net/cellular/http/common/HTTPClient/%.o: ../libraries/tests/net/cellular/http/common/HTTPClient/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


