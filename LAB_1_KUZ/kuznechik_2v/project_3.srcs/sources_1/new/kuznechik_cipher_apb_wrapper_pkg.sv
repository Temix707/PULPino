`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.04.2023 17:26:01
// Design Name: 
// Module Name: kuznechik_cipher_apb_wrapper_pkg
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

package kuznechik_cipher_apb_wrapper_pkg;

    ///////////////////////
    // Cipher memory map //
    ///////////////////////

    typedef enum {
        DATA_OUT = 32'h0014,
        DATA_IN  = 32'h0004,
        CONTROL  = 32'h0000
    } cipher_apb_addr_t;

    typedef enum {
        RST     = 0,
        REQ_ACK = 1,
        VALID   = 2,
        BUSY    = 3
    } cipher_control_t;

endpackage