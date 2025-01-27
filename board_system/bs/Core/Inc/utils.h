/*
 * utils.h
 *
 *  Created on: 2023年7月12日
 *      Author: wind
 */

#ifndef INC_UTILS_H_
#define INC_UTILS_H_

#include "stm32h7xx_hal.h"
#include <stdlib.h>
#include <string.h>

#define MYDEBUG

#define BUFFER_SIZE 1000

typedef enum {
	Normal = 0,
	Monitor = 1
}SysState;

extern uint8_t receive_data[BUFFER_SIZE];

double* parseStringToArray(const char* str, int* count);

#define MAX(a, b) (((a) > (b)) ? (a) : (b))
#define MIN(a, b) (((a) < (b)) ? (a) : (b))
#define ABS(a) (((a) > 0) ? (a) : -(a))

#endif /* INC_UTILS_H_ */
