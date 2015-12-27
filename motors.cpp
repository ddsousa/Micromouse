#include "motors.h"

Motor::Motor(PinName ch1, PinName ch2)
{
	Out1 = new PwmOut(ch1);
	Out2 = new PwmOut(ch2);
	
	int period = 1/PwmFreq;
	
	Out1->pulsewidth_us(period);
    Out2->pulsewidth_us(period);
    
	Out1->write(0);
	Out2->write(0);
}

void Motor::set_speed(float speed)
{
	if(speed < 1 && speed > 0) {
		Out1->write(speed);
        Out2->write(0);
    }
    
    else if(speed < 0 && speed > -1) {
        Out1->write(0);   
        Out2->write(-speed);
    }
    
    else if(speed == 0) {
        Out1->write(0);   
        Out2->write(0);
    }
}

/**
    Inicializa a frequencia do PWM e arranca com os motores parados.
**/
/*
void init_motors( int freq)
{
	int period = 1/freq;
	
    motorRF.pulsewidth_us(period);
    motorRR.pulsewidth_us(period);
    motorLF.pulsewidth_us(period);
    motorLR.pulsewidth_us(period);
    
    motorRF.write(0);
    motorRR.write(0);
    motorLF.write(0);
    motorLR.write(0);
}
*/
/**
    Impoe a velocidade dos motores dada de -1 a 1.
**/
/*
void set_speedR(float speedR)
{
    // Motor da Direita
    if(speedR < 1 && speedR > 0) {
        motorRF.write(speedR);
        motorRR.write(0);
    }
    
    else if(speedR < 0 && speedR > -1) {
        motorRF.write(0);   
        motorRR.write(-speedR);
    }
    
    else if(speedR == 0) {
        motorRF.write(0);   
        motorRR.write(0);
    }
}

void set_speedL(float speedL)
{
    // Motor da Esquerda
    if(speedL < 1 && speedL > 0) {
        motorLF.write(speedL);
        motorLR.write(0);
    }
    
    else if(speedL < 0 && speedL > -1) {
        motorLF.write(0);   
        motorLR.write(-speedL);
    }
    
    else if(speedL == 0) {
        motorLF.write(0);   
        motorLR.write(0);
    }
}
*/