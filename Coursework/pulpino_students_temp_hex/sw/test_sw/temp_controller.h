#ifndef TEMP_CONTROLLER_H
#define TEMP_CONTROLLER_H


#include <pulpino.h>


#define TEMP_BASE_ADDR 0x1A109000
#define TEMP_VAL (*(unsigned int*)(TEMP_BASE_ADDR))


static void temp_init() {
    CGREG |= (1 << CGTEMP);
    
    int wait_cycles = 5000000;
    while (wait_cycles > 0)
        wait_cycles--;
}


static float temp_get() {
    int raw_temp = TEMP_VAL;

    // 12 бит - знаковый, 11-0 - биты данных
    int neg = (raw_temp >> 12) & 1;
    raw_temp = raw_temp & 0xFFF;
    if (neg)
        raw_temp -= 8192;
    
    return ((float)raw_temp) / 16.0f;
}


#endif
