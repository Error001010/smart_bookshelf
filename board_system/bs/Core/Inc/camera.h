/*
 * camera.h
 *
 *  Created on: 2023年7月16日
 *      Author: wind
 */

#ifndef INC_CAMERA_H_
#define INC_CAMERA_H_

#include "gpio.h"

typedef struct {
	UART_HandleTypeDef *uart;
	uint32_t count;
	uint8_t camera_EN;
	uint8_t work_count;
}Camera_HandleTypeDef;

typedef enum {
	Camera_Work=0,
	Camera_Idle=1,
}Camera_State;

extern Camera_HandleTypeDef camera;

void Camera_Init(Camera_HandleTypeDef *camera, UART_HandleTypeDef *uart);
void Camera_Take(Camera_HandleTypeDef *camera, uint16_t time);
void Camera_Start(Camera_HandleTypeDef *camera);
void Camera_Reset(Camera_HandleTypeDef *camera);
Camera_State Camera_GetState(Camera_HandleTypeDef *camera);
uint8_t Camera_GetCount(Camera_HandleTypeDef *camera);

#endif /* INC_CAMERA_H_ */
