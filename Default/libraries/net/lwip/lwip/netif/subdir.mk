################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/net/lwip/lwip/netif/etharp.c \
../libraries/net/lwip/lwip/netif/ethernetif.c \
../libraries/net/lwip/lwip/netif/slipif.c 

OBJS += \
./libraries/net/lwip/lwip/netif/etharp.o \
./libraries/net/lwip/lwip/netif/ethernetif.o \
./libraries/net/lwip/lwip/netif/slipif.o 

C_DEPS += \
./libraries/net/lwip/lwip/netif/etharp.d \
./libraries/net/lwip/lwip/netif/ethernetif.d \
./libraries/net/lwip/lwip/netif/slipif.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/net/lwip/lwip/netif/%.o: ../libraries/net/lwip/lwip/netif/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


