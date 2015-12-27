#include "encoders.h"
#include "debug.h"

TIM_HandleTypeDef htim3;
TIM_HandleTypeDef htim4;

void Encoders::update(float deltaT)
{
	// Atualizar contagem
	curPosR = EncoderRCount;	
	curPosL = EncoderLCount;
	
	// Calcular velocidade
	long diffR, diffL;
	
	diffR = getShortest(curPosR, prevPosR);
	
	speedR = (( float(diffR) / TicksPerRev) * WheelPerimeter) / deltaT; 

	diffL = getShortest(curPosL, prevPosL);	
	speedL = (( float(diffL) / TicksPerRev) * WheelPerimeter) / deltaT;
		
	// Guardar contagem
	prevPosR = curPosR;
	prevPosL = curPosL; 
}

long getShortest(long end, long start)
{
	long diff = end - start;
	
	long dist_2 = (0xFFFF - abs(diff)) * ((diff >= 0) ? (-1) : 1);
    
    if (abs(diff) <= abs(dist_2))
        return diff;
    else
        return dist_2;
}

float Encoders::getSpeedR()
{
	return speedR;	
}

float Encoders::getSpeedL()
{
	return speedL;	
}
/**	TIM3 init function
	inicializa o timer 3 usado pelo encoder da esquerda
*/
void MX_TIM3_Init(void)
{
	TIM_Encoder_InitTypeDef sConfig;
	TIM_MasterConfigTypeDef sMasterConfig;
	
	htim3.Instance = TIM3;
	htim3.Init.Prescaler = 0;
	htim3.Init.CounterMode = TIM_COUNTERMODE_UP;
	htim3.Init.Period = 0xFFFF;
	htim3.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
	sConfig.EncoderMode = TIM_ENCODERMODE_TI1;
	sConfig.IC1Polarity = TIM_ICPOLARITY_RISING;
	sConfig.IC1Selection = TIM_ICSELECTION_DIRECTTI;
	sConfig.IC1Prescaler = TIM_ICPSC_DIV1;
	sConfig.IC1Filter = 0x0F;
	sConfig.IC2Polarity = TIM_ICPOLARITY_RISING;
	sConfig.IC2Selection = TIM_ICSELECTION_DIRECTTI;
	sConfig.IC2Prescaler = TIM_ICPSC_DIV1;
	sConfig.IC2Filter = 0x0F;
	HAL_TIM_Encoder_Init(&htim3, &sConfig);
	
	sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
	sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
	HAL_TIMEx_MasterConfigSynchronization(&htim3, &sMasterConfig);

	HAL_TIM_Encoder_Start(&htim3, TIM_CHANNEL_1);
}

/**	TIM4 init function
	inicializa o timer 4 usado pelo encoder da direita
*/
void MX_TIM4_Init(void)
{
	TIM_Encoder_InitTypeDef sConfig;
	TIM_MasterConfigTypeDef sMasterConfig;
	
	htim4.Instance = TIM4;
	htim4.Init.Prescaler = 0;
	htim4.Init.CounterMode = TIM_COUNTERMODE_UP;
	htim4.Init.Period = 0xFFFF;
	htim4.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
	sConfig.EncoderMode = TIM_ENCODERMODE_TI1;
	sConfig.IC1Polarity = TIM_ICPOLARITY_RISING;
	sConfig.IC1Selection = TIM_ICSELECTION_DIRECTTI;
	sConfig.IC1Prescaler = TIM_ICPSC_DIV1;
	sConfig.IC1Filter = 0x0F;
	sConfig.IC2Polarity = TIM_ICPOLARITY_RISING;
	sConfig.IC2Selection = TIM_ICSELECTION_DIRECTTI;
	sConfig.IC2Prescaler = TIM_ICPSC_DIV1;
	sConfig.IC2Filter = 0x0F;
	HAL_TIM_Encoder_Init(&htim4, &sConfig);
	
	sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
	sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
	HAL_TIMEx_MasterConfigSynchronization(&htim4, &sMasterConfig);

	HAL_TIM_Encoder_Start(&htim4, TIM_CHANNEL_1);
}

/** Configurar os pinos dos encoders

*/
void MX_GPIO_Init(void)
{
	GPIO_InitTypeDef GPIO_InitStruct;
	
  	/* Encoder pins */
    __TIM3_CLK_ENABLE();
	__GPIOA_CLK_ENABLE();
	GPIO_InitStruct.Pin = GPIO_PIN_6 | GPIO_PIN_7;
	GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
	GPIO_InitStruct.Pull = GPIO_PULLDOWN;
	GPIO_InitStruct.Speed = GPIO_SPEED_HIGH;
	GPIO_InitStruct.Alternate = GPIO_AF2_TIM3;
	HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
  
  	/* Encoder pins */
  	__TIM4_CLK_ENABLE();
	__GPIOB_CLK_ENABLE();
	GPIO_InitStruct.Pin = GPIO_PIN_6 | GPIO_PIN_7;
	GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
	GPIO_InitStruct.Pull = GPIO_PULLDOWN;
	GPIO_InitStruct.Speed = GPIO_SPEED_HIGH;
	GPIO_InitStruct.Alternate = GPIO_AF2_TIM4;
	HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

}

/**	Inicializa os encoders
*/
void init_encoders()
{
  	/* Initialize all configured peripherals */
  	MX_GPIO_Init();
   	MX_TIM3_Init();
  	MX_TIM4_Init();	
}