
/* debug.cpp */ 

#include "rt_TypeDef.h"
#include "rt_Time.h"
#include "mbed.h"
#include "rtos.h"

#include <stdio.h>
#include <ctype.h>


#include "debug.h"

#include <cstdio>
#include <cstdarg>

using namespace std;

//Serial com(PB_10, PB_11);

static Serial LogPC(PB_10, PB_11);
//static Timer timer;							//!< Timer para contagem de milisegundos.
static bool	disableLog = false;				//!< Desativa log de stdout.
//static Mutex *LogMutex;						//!< Singleton runtime initialisation to avoid static initialisation chaos problems.

static char LogBuffer[256];
static char cBuffer[256];

/*!
 * \brief	
 *
 */
void strToUpperCase(char* str)
{
	char *ptr = str;

	while (*ptr)	{
		*ptr = toupper(*ptr);
		ptr++;
	}
}

/*!
 * \brief	Aranca com o log
 *
 */
void Console(void)
{
	LogPC.gets(cBuffer, sizeof(cBuffer));
	strToUpperCase(cBuffer);

	if (!strcmp(cBuffer, "RESET\r\n"))
	{
		LogPC.printf("Comando Reset.\r\n");
		HAL_NVIC_SystemReset();
	}
	else if (!strcmp(cBuffer, "HELLO\r\n"))
	{
		LogPC.printf("Comando hello.\r\n");
	}
	else 
	{
		LogPC.printf("(%s) Comando desconhecido.\r\n", cBuffer);
	}
}

/*!
 * \brief	Aranca com o log
 *
 */
void LogStart(void)
{
	// Baud Rate de envio do log a 921600 bits/s
	LogPC.baud(921600);

	// Cria o mutex para o log
	//LogMutex = new Mutex();

	// Ativa o log
	LogEnable();
	
	// Lança o timer de milisegundos
	//timer.start();
	
	LogPC.attach(Console);
}

/*
 * \brief	Desativa o log
 */
void LogDisable(void)
{
	disableLog = true;
}

/*
 * \brief	Ativa o log
 */
void LogEnable(void)
{
	disableLog = false;
}

/*!
 * \brief	
 *
 */
void Log(LOG_LEVEL level, const char* fmt, ...)
{
	/*
	 * Se o log não estiver ativo sai
	 */
	if (disableLog)
		return;

	// Faz o lock do log
	//LogMutex->lock();

	/*
	 * Vamos alterar a cor do texto conforme o nível do log 
	 */
	switch(level)
	{
		case LOG_WAR:
			LogPC.printf(COLOR_B_MAGENTA);
			break;
		case LOG_ERR:
			LogPC.printf(COLOR_B_RED);
			break;
		default:
			break;
	}

	/*
	 * Vamos enviar a hora atual
	 */
	//time_t seconds = time(NULL);
	//tm	*Struct_Time = gmtime(&seconds);
	//uint32_t	current_ms = timer.read_ms();
	//LogPC.printf("\r\n%02d:%02d:%02d.%03lu ", Struct_Time->tm_hour, Struct_Time->tm_min, Struct_Time->tm_sec, current_ms % 1000);


	/*
	 * Envia o log
	 */
	va_list argp;
	va_start(argp, fmt);
	vsprintf( LogBuffer, fmt, argp);
	va_end(argp);
	
	LogPC.printf("%s", LogBuffer);
	
	/*
	 * Repõe a cor 
	 */
	LogPC.printf(NORMALTEXT);
	fflush(stdout);

	// Faz o unlock do log
	//LogMutex->unlock();
}

