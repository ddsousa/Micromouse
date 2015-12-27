#ifndef MOTORS
#define MOTORS

#include "mbed.h"
/*
PwmOut motorLR(PC_6); // PWM motor direita braco 1
PwmOut motorLF(PC_7); // PWM motor direita braco 2

PwmOut motorRF(PC_8); // PWM motor esquerda braco 1
PwmOut motorRR(PC_9); // PWM motor esquerda braco 2
*/

#define PwmFreq 25000

class Motor {
		PwmOut *Out1, *Out2;
	public:
		Motor(PinName, PinName);
		void set_speed(float speed);
};

//void Motor::init_motor(PinName ch1, PinName ch2);
//void Motor::set_speed(float speed);

void init_motors( int freq);
void set_speedR(float speedR);
void set_speedL(float speedL);

#endif