
#ifndef KUZNECHIK_H
#define KUZNECHIK_H

#include <stdbool.h>
#include <stdint.h>



#define KUZNECHIK_BLOCK_LEN 16
#define KUZNECHIK_BASE_ADDR 0x1A108000

__attribute__((packed)) struct KUZNECHIK_REGS {
    // Control Registers
    uint32_t RST;           // 0x0
    uint32_t REQ;           // 0x4
    uint32_t ACK;           // 0x8

    // Status Registers
    uint32_t VALID;         // 0xc
    uint32_t BUSY;          // 0x10

    // Data registers
    uint32_t DATA_IN[4];    // 0x14 - 0x20
    uint32_t DATA_OUT[4];   // 0x24 - 0x30
};

// Device Registers 
#define KUZNECHIK_ADDR_RST          0x0
#define KUZNECHIK_ADDR_REQ          0x4
#define KUZNECHIK_ADDR_ACK          0x8
#define KUZNECHIK_ADDR_VALID        0xc
#define KUZNECHIK_ADDR_BUSY         0x10

#define KUZNECHIK_ADDR_DATA_IN_0    0x14
#define KUZNECHIK_ADDR_DATA_IN_1    0x18
#define KUZNECHIK_ADDR_DATA_IN_2    0x1c
#define KUZNECHIK_ADDR_DATA_IN_3    0x20

#define KUZNECHIK_ADDR_DATA_OUT_0   0x24
#define KUZNECHIK_ADDR_DATA_OUT_1   0x28
#define KUZNECHIK_ADDR_DATA_OUT_2   0x2c
#define KUZNECHIK_ADDR_DATA_OUT_3   0x30


// Initializing the module
void kuznechik_init();

// Encrypt a block of data using the Grasshopper cipher
bool kuznechik_process_data_block(const void *src, void *dst);

#endif


