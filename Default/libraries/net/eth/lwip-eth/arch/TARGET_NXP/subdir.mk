################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/net/eth/lwip-eth/arch/TARGET_NXP/lpc17_emac.c \
../libraries/net/eth/lwip-eth/arch/TARGET_NXP/lpc_phy_dp83848.c 

OBJS += \
./libraries/net/eth/lwip-eth/arch/TARGET_NXP/lpc17_emac.o \
./libraries/net/eth/lwip-eth/arch/TARGET_NXP/lpc_phy_dp83848.o 

C_DEPS += \
./libraries/net/eth/lwip-eth/arch/TARGET_NXP/lpc17_emac.d \
./libraries/net/eth/lwip-eth/arch/TARGET_NXP/lpc_phy_dp83848.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/net/eth/lwip-eth/arch/TARGET_NXP/%.o: ../libraries/net/eth/lwip-eth/arch/TARGET_NXP/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


