#ifndef HEX_DRIVER_H
#define HEX_DRIVER_H


#define HEX_BASE_ADDR 0x1A108000
#define HEX_DATA0 (*(unsigned int*)(HEX_BASE_ADDR + 0))
#define HEX_DATA1 (*(unsigned int*)(HEX_BASE_ADDR + 4))


void hex_init();
void hex_out(char symbol[8]);


#endif
