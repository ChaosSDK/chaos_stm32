/*
 * comm_workers.c
 *
 *  Created on: Mar 15, 2023
 *      Author: admin
 */

#include "comm_workers.h"
#include <string.h>

u8 counte = 0;

void ping_worker(u8* const inputData, u8* const outputData, reg* const size, const reg maxOutBufferSize, PREPROCESSOR_CTX_TYPE(ctx))
{
	memcpy(outputData, inputData, (*size));
	outputData[(*size)] = counte;
	++(*size);
	++counte;
	UNUSED(maxOutBufferSize);
	UNUSED(ctx);
}



