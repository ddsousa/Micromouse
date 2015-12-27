#include "gyro.h"

/**
    Lo o valor actual da velocidade angular em º/s.
    
    No datasheet nao esta especificado qual a saida do pino vref, mas aqui esta assumido que e a tensao em repouso (0 º/s).
**/
float read_gyro()
{
    float outz_val, vref_val;
    
    outz_val = outz.read();
    vref_val = vref.read();
    
    return ((outz_val) * 3300 - 1500) * mv_dps;
}

/**
    Actualiza a imagem dos valores de velocidade de rotacao e angulo do sistema.
**/
void update_gyro()
{
    angle_micromouse += read_gyro();
}