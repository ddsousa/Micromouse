#ifndef GYRO
#define GYRO

#include "mbed.h"

AnalogIn outz(PC_1);	// pino OutZ do giroscopio
AnalogIn vref(PC_0);	// pino Vref do giroscopio

float angle_micromouse = 0;
float mv_dps = 0.67;
float read_gyro();
void update_gyro();

#endif