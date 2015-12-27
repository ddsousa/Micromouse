################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/net/https/axTLS/crypto/aes.c \
../libraries/net/https/axTLS/crypto/bigint.c \
../libraries/net/https/axTLS/crypto/crypto_misc.c \
../libraries/net/https/axTLS/crypto/hmac.c \
../libraries/net/https/axTLS/crypto/md2.c \
../libraries/net/https/axTLS/crypto/md5.c \
../libraries/net/https/axTLS/crypto/rc4.c \
../libraries/net/https/axTLS/crypto/rsa.c \
../libraries/net/https/axTLS/crypto/sha1.c 

OBJS += \
./libraries/net/https/axTLS/crypto/aes.o \
./libraries/net/https/axTLS/crypto/bigint.o \
./libraries/net/https/axTLS/crypto/crypto_misc.o \
./libraries/net/https/axTLS/crypto/hmac.o \
./libraries/net/https/axTLS/crypto/md2.o \
./libraries/net/https/axTLS/crypto/md5.o \
./libraries/net/https/axTLS/crypto/rc4.o \
./libraries/net/https/axTLS/crypto/rsa.o \
./libraries/net/https/axTLS/crypto/sha1.o 

C_DEPS += \
./libraries/net/https/axTLS/crypto/aes.d \
./libraries/net/https/axTLS/crypto/bigint.d \
./libraries/net/https/axTLS/crypto/crypto_misc.d \
./libraries/net/https/axTLS/crypto/hmac.d \
./libraries/net/https/axTLS/crypto/md2.d \
./libraries/net/https/axTLS/crypto/md5.d \
./libraries/net/https/axTLS/crypto/rc4.d \
./libraries/net/https/axTLS/crypto/rsa.d \
./libraries/net/https/axTLS/crypto/sha1.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/net/https/axTLS/crypto/%.o: ../libraries/net/https/axTLS/crypto/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


