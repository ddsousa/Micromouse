#include "mbed.h"

DigitalOut buzzer(PB_5);

int main() {
	
	while(1) {
	buzzer = 1;
	wait(0.5);
	buzzer = 0;
	wait(0.75);
	}
}