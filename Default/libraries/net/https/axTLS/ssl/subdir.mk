################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/net/https/axTLS/ssl/asn1.c \
../libraries/net/https/axTLS/ssl/gen_cert.c \
../libraries/net/https/axTLS/ssl/loader.c \
../libraries/net/https/axTLS/ssl/openssl.c \
../libraries/net/https/axTLS/ssl/os_port.c \
../libraries/net/https/axTLS/ssl/p12.c \
../libraries/net/https/axTLS/ssl/tls1.c \
../libraries/net/https/axTLS/ssl/tls1_clnt.c \
../libraries/net/https/axTLS/ssl/tls1_svr.c \
../libraries/net/https/axTLS/ssl/x509.c 

OBJS += \
./libraries/net/https/axTLS/ssl/asn1.o \
./libraries/net/https/axTLS/ssl/gen_cert.o \
./libraries/net/https/axTLS/ssl/loader.o \
./libraries/net/https/axTLS/ssl/openssl.o \
./libraries/net/https/axTLS/ssl/os_port.o \
./libraries/net/https/axTLS/ssl/p12.o \
./libraries/net/https/axTLS/ssl/tls1.o \
./libraries/net/https/axTLS/ssl/tls1_clnt.o \
./libraries/net/https/axTLS/ssl/tls1_svr.o \
./libraries/net/https/axTLS/ssl/x509.o 

C_DEPS += \
./libraries/net/https/axTLS/ssl/asn1.d \
./libraries/net/https/axTLS/ssl/gen_cert.d \
./libraries/net/https/axTLS/ssl/loader.d \
./libraries/net/https/axTLS/ssl/openssl.d \
./libraries/net/https/axTLS/ssl/os_port.d \
./libraries/net/https/axTLS/ssl/p12.d \
./libraries/net/https/axTLS/ssl/tls1.d \
./libraries/net/https/axTLS/ssl/tls1_clnt.d \
./libraries/net/https/axTLS/ssl/tls1_svr.d \
./libraries/net/https/axTLS/ssl/x509.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/net/https/axTLS/ssl/%.o: ../libraries/net/https/axTLS/ssl/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


