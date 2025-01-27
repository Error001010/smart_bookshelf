/*
 * pressure.c
 *
 *  Created on: 2023年7月15日
 *      Author: wind
 */

#include "pressure.h"

Pressure_HandleTypeDef pressure;

uint32_t ADC_ReadData(Pressure_HandleTypeDef *pressure)
{
    uint32_t AD_Data;

    HAL_ADC_Start(pressure->hadc);
    HAL_ADC_PollForConversion(pressure->hadc, 100);
    AD_Data = (uint32_t)HAL_ADC_GetValue(pressure->hadc);
    HAL_ADC_Stop(pressure->hadc);
    HAL_Delay(5);
    return AD_Data;
}

uint32_t ADC_average(Pressure_HandleTypeDef *pressure, uint32_t times)
{
    uint32_t sum = 0;
    for(int i = 0; i < times; i++)
    {
    	sum += ADC_ReadData(pressure);
    }
    sum /= times;
    return sum;
}

int32_t map(int32_t x, int32_t in_min, int32_t in_max, int32_t out_min, int32_t out_max) {
	return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}

void Pressure_Init(Pressure_HandleTypeDef *pressure, ADC_HandleTypeDef *hadc, int32_t bottom)
{
	pressure->hadc = hadc;
	pressure->bottom = bottom;
}

int32_t Pressure_Read(Pressure_HandleTypeDef *pressure, Pressure_ReadMode mode, uint8_t times)
{
	uint32_t ad_data = ADC_average(pressure, times);
	int32_t vol = map(ad_data, pressure->bottom, 4095, 0, 3300);
	int32_t press = 0;
	if(vol < VOLTAGE_MIN)
	{
		press = 0;
	}
	else if(vol > VOLTAGE_MAX)
	{
		press = PRESS_MAX;
	}
	else
	{
		press = map(vol, VOLTAGE_MIN, VOLTAGE_MAX, PRESS_MIN, PRESS_MAX);
	}
	if (mode == Pressure_AD) return ad_data;
	else if(mode == Pressure_Vol) return vol;
	else if(mode == Pressure_Pre) return press;
	else return press;
}
