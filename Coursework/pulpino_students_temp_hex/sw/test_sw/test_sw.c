#define __riscv__
#include <uart.h>
#include <pulpino.h>
#include <timer.h>
#include <string_lib.h>

#include "hex_controller.h"
#include "temp_controller.h"


int main() {
    start_timer();
    uart_set_cfg(0, 27); // 115200 baud UART, no parity (50MHz CPU)
    hex_init();
    temp_init();
    printf("Termometer started!\r\n");
    
    // Данные на семисегментниках будут обновляться раз в секунду
    // Данные по UART будут передаваться раз в 5 секунд, чтобы не переполнить терминал
    const int clocks_per_cycle = 50000000; // 1 с
    const int uart_cycles = 5;
    int uart_counter = 0;

    while (1) {
        reset_timer();

        // Считываем данные с датчика
        float temp = temp_get();

        int sign = temp < 0;
        if (sign)
            temp = -temp;
        int temp_integer = (int)temp;
        int temp_frac = (int)((temp - (float)temp_integer)*100);
        
        // Выдаём данные на семисегментники
        char str[8];
        str[0] = '0' + (temp_frac / 1) % 10; // сотые
        str[1] = '0' + (temp_frac / 10) % 10; // десятые
        str[2] = '.';
        str[3] = '0' + (temp_integer / 1) % 10; // единицы
        str[4] = '0' + (temp_integer / 10) % 10; // десятки
        str[5] = '0' + (temp_integer / 100) % 10; // сотни (мало ли?)
        str[6] = sign ? '-' : ' ';
        str[7] = ' ';
        hex_out(str);

        // Выдаём данные по UART
        if (uart_counter % uart_cycles == 0)
            printf("Temperature, celsius degree: %c%d.%02d\r\n", (sign ? '-' : '+'), temp_integer, temp_frac);
        uart_counter++;
        
        // ждём завершения текущего цикла
        while (get_time() < clocks_per_cycle)
            ;
    }
    
    return 0;
}
