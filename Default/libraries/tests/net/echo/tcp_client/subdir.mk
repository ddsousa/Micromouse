################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/tests/net/echo/tcp_client/main.cpp 

OBJS += \
./libraries/tests/net/echo/tcp_client/main.o 

CPP_DEPS += \
./libraries/tests/net/echo/tcp_client/main.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/tests/net/echo/tcp_client/%.o: ../libraries/tests/net/echo/tcp_client/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


