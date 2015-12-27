uint16_t getPID(uint16_t desireValue, uint16_t actualValue)
{
	uint16_t error = actualValue - desireValue;
	
	
}

class motorSpeed {
	public:
		int KP, KI, KD;
		int cur_error, last_error;
		int cur_speed;
		void initPID(int uKP, int uKI, int uKD);
		int getCurSpeed();
		int calcPidSpeed(int deriredSpeed);

}

void initPID()
{
	KP = uKP;
	KI = uKI;
	KD = uKD;
}

int getCurSpeed()
{
	return 1;	
}

int calcPidSpeed(int deriredSpeed)
{
	cur_error = deriredSpeed - getCurSpeed();
	
	int pwm = 	pwm 
				+ KP * (cur_error - last_error)
				+ KI * (cur_error + last_error)/2
				+ KD * (cur_error - 2*last_error);
	
	last_error = cur_error;
}