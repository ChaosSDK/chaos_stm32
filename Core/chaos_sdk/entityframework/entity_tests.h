#ifndef ENTITY_TESTS_H
#define ENTITY_TESTS_H

#include "entity_port.h"

#if defined(C_ENTITY_FRAMEWORK_LIB_ENA) && !defined(ENTITY_TEST_DISABLE)

int entityTest(int randomSeed, int testCnt);

#endif /* defined(C_ENTITY_FRAMEWORK_LIB_ENA) && !defined(ENTITY_TEST_DISABLE) */

#endif /* ENTITY_TESTS_H */
