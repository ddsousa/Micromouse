################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/net/eth/lwip-eth/arch/TARGET_RZ_A1H/rza1_emac.c 

OBJS += \
./libraries/net/eth/lwip-eth/arch/TARGET_RZ_A1H/rza1_emac.o 

C_DEPS += \
./libraries/net/eth/lwip-eth/arch/TARGET_RZ_A1H/rza1_emac.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/net/eth/lwip-eth/arch/TARGET_RZ_A1H/%.o: ../libraries/net/eth/lwip-eth/arch/TARGET_RZ_A1H/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


