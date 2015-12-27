#include "sensors.h"

TIM_HandleTypeDef TimerDef;

void timer_irq_handler(void) {
	if (__HAL_TIM_GET_FLAG(&TimerDef, TIM_FLAG_UPDATE) != RESET) {      //In case other interrupts are also running

		if(state == 0) {
			state = 1;
			led1 = 1;
			TIM7->ARR = (uint16_t) 50;
		}
		else if(state == 1) {
			state = 0;
			led1 = 0;
			TIM7->ARR = (uint16_t) 25000;
		}

		__HAL_TIM_CLEAR_FLAG(&TimerDef, TIM_FLAG_UPDATE);
    	//HAL_TIM_IRQHandler(&TimerDef);
	}	
}

/* TIM init function */
void TIM_Init(void)
{
	// Enable timer clock
  	__TIM7_CLK_ENABLE();
  
  	// Reset timer
  	__TIM7_FORCE_RESET();
  	__TIM7_RELEASE_RESET();
  	
  	TimerDef.Instance = TIM7;
  	TimerDef.Init.Period = 1000;
  	TimerDef.Init.Prescaler = (uint16_t)(SystemCoreClock / 1000000) - 1; // 100 us tick?
  	TimerDef.Init.ClockDivision = 0;
  	TimerDef.Init.CounterMode = TIM_COUNTERMODE_UP;
  	TimerDef.Init.RepetitionCounter = 0;
  	HAL_TIM_Base_Init(&TimerDef);
  	
  	HAL_TIM_Base_Start_IT(&TimerDef);
  	
  	NVIC_SetVector(TIM7_IRQn, (uint32_t)timer_irq_handler);
    NVIC_EnableIRQ(TIM7_IRQn);

}


void TIM7_IRQHandler()
{
	led3 = 1;
	
	if (__HAL_TIM_GET_FLAG(&TimerDef, TIM_FLAG_UPDATE) != RESET) {      //In case other interrupts are also running

		led1 = 1;
	
		__HAL_TIM_CLEAR_FLAG(&TimerDef, TIM_FLAG_UPDATE);
    	HAL_TIM_IRQHandler(&TimerDef);
	}
}