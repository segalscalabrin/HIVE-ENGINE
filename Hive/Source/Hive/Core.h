#pragma once

#ifdef __linux__
    #define HIVE_API 
#else
    #error This project currently only supports Linux!
#endif

#define BIT(x) (1 << x)