#ifndef HEX_CONTROLLER_H
#define HEX_CONTROLLER_H


#include <pulpino.h>


#define HEX_BASE_ADDR 0x1A108000
#define HEX_STRING ((unsigned int*)(HEX_BASE_ADDR))


static void hex_init() {
    CGREG |= (1 << CGHEX);
}


static void hex_out(char symbol[8]) {
    HEX_STRING[0] = *((unsigned int*)(symbol + 0));
    HEX_STRING[1] = *((unsigned int*)(symbol + 4));
}


#endif
