################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/net/lwip/lwip/core/ipv4/autoip.c \
../libraries/net/lwip/lwip/core/ipv4/icmp.c \
../libraries/net/lwip/lwip/core/ipv4/igmp.c \
../libraries/net/lwip/lwip/core/ipv4/inet.c \
../libraries/net/lwip/lwip/core/ipv4/inet_chksum.c \
../libraries/net/lwip/lwip/core/ipv4/ip.c \
../libraries/net/lwip/lwip/core/ipv4/ip_addr.c \
../libraries/net/lwip/lwip/core/ipv4/ip_frag.c 

OBJS += \
./libraries/net/lwip/lwip/core/ipv4/autoip.o \
./libraries/net/lwip/lwip/core/ipv4/icmp.o \
./libraries/net/lwip/lwip/core/ipv4/igmp.o \
./libraries/net/lwip/lwip/core/ipv4/inet.o \
./libraries/net/lwip/lwip/core/ipv4/inet_chksum.o \
./libraries/net/lwip/lwip/core/ipv4/ip.o \
./libraries/net/lwip/lwip/core/ipv4/ip_addr.o \
./libraries/net/lwip/lwip/core/ipv4/ip_frag.o 

C_DEPS += \
./libraries/net/lwip/lwip/core/ipv4/autoip.d \
./libraries/net/lwip/lwip/core/ipv4/icmp.d \
./libraries/net/lwip/lwip/core/ipv4/igmp.d \
./libraries/net/lwip/lwip/core/ipv4/inet.d \
./libraries/net/lwip/lwip/core/ipv4/inet_chksum.d \
./libraries/net/lwip/lwip/core/ipv4/ip.d \
./libraries/net/lwip/lwip/core/ipv4/ip_addr.d \
./libraries/net/lwip/lwip/core/ipv4/ip_frag.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/net/lwip/lwip/core/ipv4/%.o: ../libraries/net/lwip/lwip/core/ipv4/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


