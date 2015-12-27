################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/net/lwip/lwip/core/snmp/asn1_dec.c \
../libraries/net/lwip/lwip/core/snmp/asn1_enc.c \
../libraries/net/lwip/lwip/core/snmp/mib2.c \
../libraries/net/lwip/lwip/core/snmp/mib_structs.c \
../libraries/net/lwip/lwip/core/snmp/msg_in.c \
../libraries/net/lwip/lwip/core/snmp/msg_out.c 

OBJS += \
./libraries/net/lwip/lwip/core/snmp/asn1_dec.o \
./libraries/net/lwip/lwip/core/snmp/asn1_enc.o \
./libraries/net/lwip/lwip/core/snmp/mib2.o \
./libraries/net/lwip/lwip/core/snmp/mib_structs.o \
./libraries/net/lwip/lwip/core/snmp/msg_in.o \
./libraries/net/lwip/lwip/core/snmp/msg_out.o 

C_DEPS += \
./libraries/net/lwip/lwip/core/snmp/asn1_dec.d \
./libraries/net/lwip/lwip/core/snmp/asn1_enc.d \
./libraries/net/lwip/lwip/core/snmp/mib2.d \
./libraries/net/lwip/lwip/core/snmp/mib_structs.d \
./libraries/net/lwip/lwip/core/snmp/msg_in.d \
./libraries/net/lwip/lwip/core/snmp/msg_out.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/net/lwip/lwip/core/snmp/%.o: ../libraries/net/lwip/lwip/core/snmp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


