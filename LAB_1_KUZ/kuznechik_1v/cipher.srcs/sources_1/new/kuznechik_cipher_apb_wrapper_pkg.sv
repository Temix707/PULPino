package kuznechik_cipher_apb_wrapper_pkg;

    ///////////////////////
    // Cipher memory map //
    ///////////////////////

    // Adress space in and out
    typedef enum {
        DATA_OUT = 32'h0014,        // d'20
        DATA_IN  = 32'h0004,        // d'4
        CONTROL  = 32'h0000
    } cipher_apb_addr_t;

      
    typedef enum {
        RST     = 0,
        REQ_ACK = 1,
        VALID   = 2,
        BUSY    = 3
    } cipher_control_t;

endpackage