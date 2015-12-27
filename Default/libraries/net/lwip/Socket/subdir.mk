################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/net/lwip/Socket/Endpoint.cpp \
../libraries/net/lwip/Socket/Socket.cpp \
../libraries/net/lwip/Socket/TCPSocketConnection.cpp \
../libraries/net/lwip/Socket/TCPSocketServer.cpp \
../libraries/net/lwip/Socket/UDPSocket.cpp 

OBJS += \
./libraries/net/lwip/Socket/Endpoint.o \
./libraries/net/lwip/Socket/Socket.o \
./libraries/net/lwip/Socket/TCPSocketConnection.o \
./libraries/net/lwip/Socket/TCPSocketServer.o \
./libraries/net/lwip/Socket/UDPSocket.o 

CPP_DEPS += \
./libraries/net/lwip/Socket/Endpoint.d \
./libraries/net/lwip/Socket/Socket.d \
./libraries/net/lwip/Socket/TCPSocketConnection.d \
./libraries/net/lwip/Socket/TCPSocketServer.d \
./libraries/net/lwip/Socket/UDPSocket.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/net/lwip/Socket/%.o: ../libraries/net/lwip/Socket/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


