#ifndef __KASSERT_H__

#include "kpanic.h"

#define KASSERT(exp, failed_msg) exp ? 0 : kpanic("ASSERTION FAILED! " failed_msg)  

#endif // __KASSERT_H__