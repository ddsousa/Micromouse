#ifndef ENCODERS
#define ENCODERS

#include "mbed.h"

#define EncoderRCount TIM4->CNT
#define EncoderLCount TIM3->CNT

#define EncoderRDir (TIM4->CR1 & 0x16) > 0
#define EncoderLDir (TIM3->CR1 & 0x16) > 0

#define TicksPerRev 2048.0
#define WheelPerimeter 15.71

class Encoders {
		long curPosR, prevPosR, curPosL, prevPosL;
		float speedR, speedL;
	public:
		Encoders() {prevPosR = 0; prevPosL = 0; speedR = 0; speedL = 0;};
		//unsigned int getPos();
		float getSpeedR();
		float getSpeedL();
		void update(float deltaT);
};

void init_encoders();
void MX_GPIO_Init(void);
void MX_TIM4_Init(void);
void MX_TIM3_Init(void);
long getShortest(long end, long start);

#endif