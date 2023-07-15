#define __riscv__
#include <uart.h>
#include <pulpino.h>
#include <string_lib.h>

#include "hex_driver.h"



int main() {
    uart_set_cfg(0, 27); // 115200 baud UART, no parity (50MHz CPU)
    hex_init();

    printf("Hello, world!\r\nWrite some text, it will be printed on hex display\r\n");
    
    // Здесь будет хранится вводимая строка
    char str[8];
    for (int i=0; i<8; i++)
        str[i] = ' ';
    
    while (1) {
        // Получаем очередной символ строки
        for (int i=7; i>0; i--)
            str[i] = str[i-1];
        str[0] = uart_getchar();

        // Выводим на семисегментники
        hex_out(str);
    }
    
    return 0;
}
