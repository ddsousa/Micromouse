
#include "mbed.h"
#include "LCD.h"

/********************************************************************
*	LCD
********************************************************************/

// LCD
DigitalOut RS(A5);
DigitalOut EN(A4);
DigitalOut DT4(A3);
DigitalOut DT5(A2);
DigitalOut DT6(A1);
DigitalOut DT7(A0);

#define CMD		 0	//!< Indica que vai enviar comandos
#define DAT		 1	//!< Indica que vai enviar dados

void LCD::sendNibble( uint8_t type, uint8_t nibble)
{
	type ? RS=1 : RS=0;
		
	(nibble & 0x01) ? DT4=1 : DT4=0;	// Dado 0
	(nibble & 0x02) ? DT5=1 : DT5=0;	// Dado 1
	(nibble & 0x04) ? DT6=1 : DT6=0;	// Dado 2
	(nibble & 0x08) ? DT7=1 : DT7=0;	// Dado 3	
		
	EN=1;
	wait_us(40);
	EN=0;
	wait_us(40);
}

void LCD::sendByte( uint8_t type, uint8_t data)
{
	sendNibble(type, (data >> 4));
	sendNibble(type, (data & 0x0F));
}

void LCD::init(void)
{
	wait_ms(10);
	
	// Definir modo de 4-bits
	sendNibble(CMD, 0b0011);
	wait_us(20);
	
	sendNibble(CMD, 0b0011);
	wait_us(20);
	
	sendNibble(CMD, 0b0011);
	wait_us(20);
	
	sendNibble(CMD, 0b0010);
	wait_us(20);
	
	// Modo de 2*4 bits
	sendByte(CMD, 0b00101000);
	wait_us(20);
	
	sendByte(CMD, 0b00010100);
	wait_us(20);
	
	sendByte(CMD, 0b00000110);
	wait_us(20);	
	
	sendByte(CMD, 0b00001100);
	wait_us(20);
	
	sendByte(CMD, 0b00000001);
	
	wait_ms(1);
}

void LCD::writeString(char * str)
{
	unsigned char i;
	
	for(i=0; str[i]!='\0'; i++) {
			
		if(i==20)	sendByte(CMD, 0x80 | 0x40);
		
		sendByte(DAT, str[i]);
	}
}

void LCD::clear(void)
{
	sendByte(CMD, 0x01);
	wait_ms(5);
}