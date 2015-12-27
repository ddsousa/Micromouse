#include "mbed.h"
#include "rtos.h" 
#include "debug.h"
#include "motors.h"
#include "encoders.h"
//#include "gyro.h"
#include "Kalman.h"
#include "PID.h" 
#include "misc.h"

PID controlMotorR(0.005, 0.01, 0.01, 0.01);
PID controlMotorL(0.005, 0.01, 0.01, 0.01);

Kalman filtro;

/*
PwmOut motorLR(PC_6); // PWM motor direita braco 1
PwmOut motorLF(PC_7); // PWM motor direita braco 2

PwmOut motorRF(PC_8); // PWM motor esquerda braco 1
PwmOut motorRR(PC_9); // PWM motor esquerda braco 2
*/

Motor motorL(PC_7, PC_6);
Motor motorR(PC_9, PC_8);

Encoders encoders;

DigitalOut buzzer(PB_5);
DigitalOut led1(PC_13);
DigitalOut led2(PC_14);
DigitalOut led3(PC_15);

DigitalOut emitterSideLow(PB_3);
DigitalOut emitterSideHigh(PD_2);
DigitalOut emitterDiagonalLow(PC_11);
DigitalOut emitterDiagonalHigh(PC_12);
DigitalOut emitterFrontRight(PC_10);
DigitalOut emitterFrontLeft(PB_4);

AnalogIn receiverSideRight(PA_0);
AnalogIn receiverSideLeft(PA_1);
AnalogIn receiverDiagonalRight(PC_3);
AnalogIn receiverDiagonalLeft(PA_2);
AnalogIn receiverFrontRight(PC_2);
AnalogIn receiverFrontLeft(PA_3);

InterruptIn button(PA_10);

/**** Gyro Debug ****/

AnalogIn outz(PC_1);
AnalogIn vref(PC_0);

float angle_micromouse = 0;
float last_read;
float mv_dps = 0.67;
float gyro_zero = 2224; 
float gyro_zero_drift = 0; 

float read_gyro()
{
    float outz_val, vref_val, read_value;

   	outz_val = outz.read();
    vref_val = vref.read();
    
    //Log(LOG_INF, "Outz: %fmV Vref: %fmV diff: %fmV\n", outz_val * 3300, vref_val * 3300, (outz_val - vref_val) * 3300);
    
    read_value = ((outz_val * 3300) - gyro_zero) * 0.67;
    last_read = read_value;
    
   	return read_value; 
}

/**
    Actualiza a imagem dos valores de velocidade de rotacao e angulo do sistema.
**/
void update_gyro()
{
	float aspeed;
	
	aspeed = read_gyro();
	
	angle_micromouse += aspeed * 0.05;
	
	angle_micromouse = filtro.getAngle( angle_micromouse, aspeed, 0.05);
}

void gyro_set_zero()
{
	gyro_zero = outz.read() * 3300;
	
	for(int i = 0; i < 150; i++)	{
		gyro_zero = (gyro_zero + (outz.read() * 3300)) / 2;
		wait_ms(7);
	}
	
	Log(LOG_WAR, "\nZero: %fmV\n", gyro_zero);
}

/**** End Gyro Debug ****/

AnalogIn bat_lvl(PB_1);

Ticker t;

bool motorsactive = 1;

Ticker motorL_task;
Ticker motorR_task;

long prevEncPosR = 0, prevEncPosL = 0, curEncPosL, curEncPosR;
float cur_speedL, cur_speedR;
float prevSpeedL, prevSpeedR;
float motorLSpeed=0;
float motorRSpeed=0;
float curErrorL, prevErrorL;
float curErrorR, prevErrorR;
int desiredLSpeed = 50, desiredRSpeed = 170;

void motorR_control()
{	
	// calculate speed
	encoders.update(0.1);
	//curEncPosR = TIM4->CNT;
	//cur_speedR = (( float(curEncPosR - prevEncPosR) / 2048.0) * 15.71) / 0.1; // velocidade em mm/s
	
	curErrorR = desiredRSpeed - encoders.getSpeedR();
	
	motorRSpeed = motorRSpeed + 0.01 * curErrorR + 0.01 *(curErrorR - prevErrorR) + 0.005 * (curErrorR - 2*prevErrorR);
	
	Log(LOG_INF, "encspeed: %f pwm: %f\n", encoders.getSpeedR(), motorRSpeed);
	
	if(motorRSpeed > 50)
		motorRSpeed = 50;
	else if (motorRSpeed < 0)
		motorRSpeed = 0;	
	
	if(motorRSpeed/400 < 1 && motorsactive)
		motorR.set_speed(motorRSpeed / 400); // 0 -> 1
	else
		motorR.set_speed(0); // 0 -> 1
	
	prevEncPosR = curEncPosR;
	prevSpeedR = encoders.getSpeedR();
	prevErrorR = curErrorR;
}

float pwmR;

void motorR_controlPIDLib()
{	
	// calculate speed
	encoders.update(0.1);
	
	controlMotorR.setProcessValue(encoders.getSpeedR());
	
	pwmR = controlMotorR.compute();
	
	//Log(LOG_INF, "encspeed: %.2f pwm: %f\n ", encoders.getSpeedR(), pwmR);

	if(motorsactive)
		motorR.set_speed(-pwmR); // 0 -> 1
	else
		motorR.set_speed(0);
}

void motorL_control()
{
	// calculate speed
	encoders.update(0.1);
	//cur_speedL = -(( float(curEncPosL - prevEncPosL) / 2048.0) * 15.71) / 0.1; // velocidade em mm/s
	
	curErrorL = desiredLSpeed - encoders.getSpeedL();
	
	motorLSpeed = motorLSpeed + 0.01 * curErrorL + 0.01 *(curErrorL - prevErrorL);
	
	Log(LOG_INF, "cur: %d prev: %d encspeed: %f pwm: %f\n", curEncPosL, prevEncPosL, cur_speedL, motorLSpeed);
	
	if(motorLSpeed/400 < 1 && motorsactive)
		motorL.set_speed(motorLSpeed / 400); // 0 -> 1
	else
		motorL.set_speed(0); // 0 -> 1
	
	prevEncPosL = curEncPosL;
	prevSpeedL = encoders.getSpeedL();
	prevErrorL = curErrorL;
}

void stopmotors()
{
	motorsactive = !motorsactive;
}



void readSensors(void)
{
	emitterSideLow		= 1;
	emitterSideHigh		= 1;
	emitterDiagonalLow	= 1;
	emitterDiagonalHigh	= 1;
	emitterFrontRight	= 1;
	emitterFrontLeft	= 1;
	
	wait(0.002);


	Log(LOG_INF, " SR:%.2f SL:%.2f DR:%.2f DL:%.2f FR:%.2f FL:%.2f\r",receiverSideRight.read(),
																		receiverSideLeft.read(),
																		receiverDiagonalRight.read(),
																		receiverDiagonalLeft.read(),
																		receiverFrontRight.read(),
																		receiverFrontLeft.read()      );

	emitterSideLow		= 0;	
	emitterSideHigh		= 0;
	emitterDiagonalLow	= 0;
	emitterDiagonalHigh	= 0;
	emitterFrontRight	= 0;
	emitterFrontLeft	= 0;
	
	wait(0.5);
}

int main() {
	
	/*********************
		Inicializações
	*********************/
	
	// Comunicacoes
	LogStart();

	// Controladores
	
	controlMotorR.setInputLimits(-400, 400);
	controlMotorR.setOutputLimits(-0.25, 0.25);
	controlMotorR.setMode(1);
	controlMotorR.setSetPoint(100);
/*	
	controlMotorL.setInputLimits(-200, 200);
	controlMotorL.setOutputLimits(-0.25, 0.25);
	controlMotorL.setMode(1);
*/	
	// Encoders
	init_encoders();	
	
	//
	//gyro_set_zero();
	
	// Desligar motores
	//button.rise(&stopmotors);
			
	// Debug
	buzzer = 1;
    wait(.05);
    buzzer = 0;
	
	Log(LOG_ERR, "Micromouse AMAZERUNNER\n");
	
	led1 = 1;
	led2 = 1;
	led3 = 1;
	
	wait(.1);
	
	led1 = 0;
	led2 = 0;
	led3 = 0;
	
//	motorR_task.attach(&motorR_controlPIDLib, 0.1);
//	motorL_task.attach(&motorL_control, 0.1);

	float pwm_outR, pwm_outL;

	long cycle_n = 0;

	while(1) {
		
		readSensors();
		
		//cycle_n++;
		
		//read_gyro();
	
		//led2 = !led2;
		//wait(0.1);
		
		/*********************
				Ciclo
		*********************/
		
		/* Ler sensores */
		
		// Encoders
		//encoders.update(0.01);
		//update_gyro();
		
		// Gyro
		
		// Óticos
	
		/* Atualizar controladores */
/*		controlMotorR.setSetPoint(0);
		controlMotorR.setProcessValue(encoders.getSpeedR());
		pwm_outR = controlMotorR.compute();
		
		controlMotorL.setSetPoint(0);
		controlMotorL.setProcessValue(encoders.getSpeedR());
		pwm_outL = controlMotorL.compute();
*/
		
		/* Alterar saídas */
		//motorR.set_speed(pwm_outR);
		//motorL.set_speed(pwm_outL);		
		
		//gyro_get_zero_drift();
/*		
		if(0) {
			//Log(LOG_INF, "SpdR: %f SpdL: %f\n", encoders.getSpeedR(), encoders.getSpeedL());
			//Log(LOG_INF, "EncoderR: %d DirR: %d   EncoderL: %d DirL: %d\n", TIM4->CNT, (TIM4->CR1 & 0x16) > 1, TIM3->CNT, (TIM3->CR1 & 0x16) > 1);
			Log(LOG_INF, "Angle: %.2fº Speed: %.2fdps\n", angle_micromouse, last_read);
		}
*/		
		//wait(0.05);
    }
}
