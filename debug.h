/* dbg.h */

#ifndef DEBUG_H_
#define DEBUG_H_

#ifdef __cplusplus
extern "C" {
#endif

#define RESETSCREEN			"\f\e[0m"
#define CLEARSCREEN			"\e[2J"
#define NORMALTEXT			"\e[0m"

#define COLOR_RED			"\e[31m"  
#define COLOR_B_RED 		"\e[31;1m"  
#define COLOR_GREEN			"\e[32m"  
#define COLOR_B_GREEN		"\e[32;1m"
#define COLOR_YELLOW		"\e[33m"  
#define COLOR_B_YELLOW		"\e[33;1m"  
#define COLOR_BLUE			"\e[34m"  
#define COLOR_B_BLUE		"\e[34;1m"  
#define COLOR_MAGENTA		"\e[35m"  
#define COLOR_B_MAGENTA		"\e[35;1m"  
#define COLOR_BRIGHT		"\e[1m"  
#define COLOR_CYAN			"\e[36m"  
#define COLOR_WHITE			"\e[37m"
#define COLOR_B_WHITE		"\e[37;1m"
#define COLOR_NONE			"\e[m"  
#define COLOR_BLACK			"\e[30m"
#define COLOR_B_BLACK		"\e[30;1m"
#define COLOR_BACK_WHITE	"\e[47m"
#define COLOR_REVERSE		"\e[7m"

typedef enum {
	LOG_INF,
	LOG_WAR,
	LOG_ERR,
}  LOG_LEVEL;


#define __DEBUG__	1


void LogStart(void);
void LogDisable(void);
void LogEnable(void);
void Log(LOG_LEVEL level, const char* fmt, ...);

/*
#if __DEBUG__ 

#define LogStart() 		do{ LogStartD(); }while(0)
#define LogDisable()	do{ LogDisableD(); }while(0)
#define LogEnable() 	do{ LogEnableD(); }while(0)
#define Log(...) 		do{ LogD(int level, char *fmt, ...); }while(0)

#else

#define LogStart() 		do{ }while(0)
#define LogDisable()	do{ }while(0)
#define LogEnable()		do{ }while(0)
#define Log(...)		do{ }while(0)

#endif
*/

#ifdef __cplusplus
}
#endif

#endif /* DEBUG_H_ */

