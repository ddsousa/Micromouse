################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/net/lwip/lwip/api/api_lib.c \
../libraries/net/lwip/lwip/api/api_msg.c \
../libraries/net/lwip/lwip/api/err.c \
../libraries/net/lwip/lwip/api/netbuf.c \
../libraries/net/lwip/lwip/api/netdb.c \
../libraries/net/lwip/lwip/api/netifapi.c \
../libraries/net/lwip/lwip/api/sockets.c \
../libraries/net/lwip/lwip/api/tcpip.c 

OBJS += \
./libraries/net/lwip/lwip/api/api_lib.o \
./libraries/net/lwip/lwip/api/api_msg.o \
./libraries/net/lwip/lwip/api/err.o \
./libraries/net/lwip/lwip/api/netbuf.o \
./libraries/net/lwip/lwip/api/netdb.o \
./libraries/net/lwip/lwip/api/netifapi.o \
./libraries/net/lwip/lwip/api/sockets.o \
./libraries/net/lwip/lwip/api/tcpip.o 

C_DEPS += \
./libraries/net/lwip/lwip/api/api_lib.d \
./libraries/net/lwip/lwip/api/api_msg.d \
./libraries/net/lwip/lwip/api/err.d \
./libraries/net/lwip/lwip/api/netbuf.d \
./libraries/net/lwip/lwip/api/netdb.d \
./libraries/net/lwip/lwip/api/netifapi.d \
./libraries/net/lwip/lwip/api/sockets.d \
./libraries/net/lwip/lwip/api/tcpip.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/net/lwip/lwip/api/%.o: ../libraries/net/lwip/lwip/api/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


