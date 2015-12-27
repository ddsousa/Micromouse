################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/net/lwip/lwip-sys/arch/checksum.c \
../libraries/net/lwip/lwip-sys/arch/memcpy.c \
../libraries/net/lwip/lwip-sys/arch/sys_arch.c 

OBJS += \
./libraries/net/lwip/lwip-sys/arch/checksum.o \
./libraries/net/lwip/lwip-sys/arch/memcpy.o \
./libraries/net/lwip/lwip-sys/arch/sys_arch.o 

C_DEPS += \
./libraries/net/lwip/lwip-sys/arch/checksum.d \
./libraries/net/lwip/lwip-sys/arch/memcpy.d \
./libraries/net/lwip/lwip-sys/arch/sys_arch.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/net/lwip/lwip-sys/arch/%.o: ../libraries/net/lwip/lwip-sys/arch/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


