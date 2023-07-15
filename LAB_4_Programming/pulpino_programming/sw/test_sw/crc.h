#ifndef CRC_H
#define CRC_H

#include "pulpino.h"
#include <stdbool.h>
#include <stdint.h>

// Structure for the CRC calculator.
__attribute__ ((packed))  struct CRC_APB{
  uint32_t CRC_REG_WRITE_DATA;          // Поле даных 
  uint32_t CRC_REG_READ_CRC;            // Поле CRC
  uint32_t CRC_REG_READ_STATUS;         // Поле статуса
};

// define to the addresses of the registers of the CRC calculator.
#define CRC_STATUS_IDLE 0x00            // Состояние бездействия 
#define CRC_STATUS_BUSY 0x01            // Состояние вычисления
#define CRC_STATUS_READ 0x02            // Состояние чтения CRC

// Function headers for the CRC calculator.
void crc_init(void);                    // Инициализация структуры
void crc_write_data(int data);          // Запись данных
int crc_read_status(void);              // Чтение решистра состояния
int crc_read_status_idle_status(void);  // Чтение состояния бездействия
int crc_read_status_busy_status(void);  // Чтение состояния вычисления -
int crc_read_status_read_status(void);  // Чтение состояния чтения -
int crc_read_status_crc(void);          // Чтения значения CRC -

#endif 