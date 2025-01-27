/*
 * camera.c
 *
 *  Created on: 2023年7月16日
 *      Author: wind
 */

#include "camera.h"

Camera_HandleTypeDef camera;

void Camera_Init(Camera_HandleTypeDef *camera, UART_HandleTypeDef *uart)
{
	camera->uart = uart;
	camera->camera_EN = 0;
	camera->count = 0;
	camera->work_count = 0;
}

void Camera_Take(Camera_HandleTypeDef *camera, uint16_t time)
{
	if (camera->camera_EN == 1)
	{
		HAL_GPIO_TogglePin(LD2_GPIO_Port, LD2_Pin);
		if (camera->count == 0)
		{
			uint8_t msg[] = "k";
			HAL_UART_Transmit(camera->uart, msg, sizeof(msg), 10);
			camera->work_count += 1;
		}
		if(camera->count > time)
		{
			camera->count = -1;
		}
		camera->count += 1;
	}
}

void Camera_Start(Camera_HandleTypeDef *camera)
{
	camera->count = 0;
	camera->camera_EN = 1;
	camera->work_count = 0;
}

void Camera_Reset(Camera_HandleTypeDef *camera)
{
	camera->count = 0;
	camera->camera_EN = 0;
	camera->work_count = 0;
}

Camera_State Camera_GetState(Camera_HandleTypeDef *camera)
{
	return (camera->camera_EN == 1) ? Camera_Work : Camera_Idle;
}

uint8_t Camera_GetCount(Camera_HandleTypeDef *camera)
{
	return camera->work_count;
}
