/*
 * comm_workers.h
 *
 *  Created on: Mar 15, 2023
 *      Author: admin
 */

#ifndef _COMM_WORKERS_H_
#define _COMM_WORKERS_H_

#include "my_ctypes.h"
#include "preprocessor_ctx.h"

void ping_worker(u8* const inputData, u8* const outputData, reg* const size, const reg maxOutBufferSize, PREPROCESSOR_CTX_TYPE(ctx));


#endif /* _COMM_WORKERS_H_ */
