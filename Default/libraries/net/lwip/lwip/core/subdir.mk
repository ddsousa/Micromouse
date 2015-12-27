################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/net/lwip/lwip/core/def.c \
../libraries/net/lwip/lwip/core/dhcp.c \
../libraries/net/lwip/lwip/core/dns.c \
../libraries/net/lwip/lwip/core/init.c \
../libraries/net/lwip/lwip/core/mem.c \
../libraries/net/lwip/lwip/core/memp.c \
../libraries/net/lwip/lwip/core/netif.c \
../libraries/net/lwip/lwip/core/pbuf.c \
../libraries/net/lwip/lwip/core/raw.c \
../libraries/net/lwip/lwip/core/stats.c \
../libraries/net/lwip/lwip/core/tcp.c \
../libraries/net/lwip/lwip/core/tcp_in.c \
../libraries/net/lwip/lwip/core/tcp_out.c \
../libraries/net/lwip/lwip/core/timers.c \
../libraries/net/lwip/lwip/core/udp.c 

OBJS += \
./libraries/net/lwip/lwip/core/def.o \
./libraries/net/lwip/lwip/core/dhcp.o \
./libraries/net/lwip/lwip/core/dns.o \
./libraries/net/lwip/lwip/core/init.o \
./libraries/net/lwip/lwip/core/mem.o \
./libraries/net/lwip/lwip/core/memp.o \
./libraries/net/lwip/lwip/core/netif.o \
./libraries/net/lwip/lwip/core/pbuf.o \
./libraries/net/lwip/lwip/core/raw.o \
./libraries/net/lwip/lwip/core/stats.o \
./libraries/net/lwip/lwip/core/tcp.o \
./libraries/net/lwip/lwip/core/tcp_in.o \
./libraries/net/lwip/lwip/core/tcp_out.o \
./libraries/net/lwip/lwip/core/timers.o \
./libraries/net/lwip/lwip/core/udp.o 

C_DEPS += \
./libraries/net/lwip/lwip/core/def.d \
./libraries/net/lwip/lwip/core/dhcp.d \
./libraries/net/lwip/lwip/core/dns.d \
./libraries/net/lwip/lwip/core/init.d \
./libraries/net/lwip/lwip/core/mem.d \
./libraries/net/lwip/lwip/core/memp.d \
./libraries/net/lwip/lwip/core/netif.d \
./libraries/net/lwip/lwip/core/pbuf.d \
./libraries/net/lwip/lwip/core/raw.d \
./libraries/net/lwip/lwip/core/stats.d \
./libraries/net/lwip/lwip/core/tcp.d \
./libraries/net/lwip/lwip/core/tcp_in.d \
./libraries/net/lwip/lwip/core/tcp_out.d \
./libraries/net/lwip/lwip/core/timers.d \
./libraries/net/lwip/lwip/core/udp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/net/lwip/lwip/core/%.o: ../libraries/net/lwip/lwip/core/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


