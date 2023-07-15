module kuznechik_cipher_apb_wrapper(

    // Clock and reset
    input  logic             pclk_i,
    input  logic             presetn_i,

    // Address
    input  logic      [31:0] paddr_i,

    // Control-status
    input  logic             psel_i,
    input  logic             penable_i,
    input  logic             pwrite_i,

    // Write
    input  logic      [31:0] pwdata_i,
    input  logic      [3:0]  pstrb_i,

    // Slave
    output logic             pready_o,
    output logic      [31:0] prdata_o,
    output logic             pslverr_o

);
    
    import kuznechik_cipher_apb_wrapper_pkg::*;

    logic        cipher_resetn, cipher_req, cipher_ack, cipher_busy, cipher_valid;
    logic [7:0]  reg_rst, reg_req_ack, reg_valid, reg_busy;
    logic [31:0] reg_data_in[0:3];
    logic [31:0] reg_data_out[0:3];
    
    assign reg_valid[7:1] = 7'b0;
    assign reg_busy [7:1] = 7'b0;
    
    
    logic [127:0] cipher_data_in, cipher_data_out;
    
    generate
      for ( genvar i = 0; i < 4; i++ ) begin
        assign cipher_data_in[i * 32 + 31:i * 32] = reg_data_in[i];
        assign reg_data_out  [i]                  = cipher_data_out[i*32+31:i*32];
      end
    endgenerate
    
    assign cipher_resetn = presetn_i && reg_rst[0];

    assign reg_valid[0]  = cipher_valid;
    assign reg_busy [0]  = cipher_busy;


    logic inner_request;
    assign inner_request = psel_i && !penable_i;
    

    always_ff @( posedge pclk_i )
      pready_o <= inner_request;
        
        

    logic error;
    assign error = ( pwrite_i && ((paddr_i[5:0] == CONTROL[5:0] && (pstrb_i[VALID] || pstrb_i[BUSY]) || 
                    (paddr_i[5:0] >= DATA_OUT[5:0] && paddr_i[5:0] <= 6'h20)))) //write to readonly reg 
                    || (pwrite_i && paddr_i[5:0] == CONTROL[5:0] && pstrb_i[REQ_ACK] && cipher_busy && 
                    !cipher_valid)
                    || (paddr_i[5:0] < CONTROL[5:0] && paddr_i[5:0] > 6'h20 && paddr_i[1:0] != 2'b00);


    //assign error = 1'b0 || error_wro || error_kuz || error_mod4 || error_nonadr;  
    always_ff @( posedge pclk_i or negedge presetn_i ) begin
      if( !presetn_i ) begin
        pslverr_o <= 1'b0;
      end 
      else begin
        pslverr_o <= inner_request & error;
      end
    end


    logic [1:0] reg_indata_address;
    logic [1:0] reg_outdata_address;

    assign reg_indata_address  = (paddr_i[5:0] - DATA_IN[5:0]) >> 2;
    assign reg_outdata_address = (paddr_i[5:0] - DATA_OUT[5:0]) >> 2;
    
    generate
      for ( genvar i = 0; i < 4; i++ ) begin
        always_ff @( posedge pclk_i ) begin
          if( !presetn_i ) begin
            reg_data_in[reg_indata_address][8*i+7:8*i] <= '0;
          end 
          else begin
            if( pwrite_i && pstrb_i[i] && inner_request && (paddr_i[5:0] >= DATA_IN[5:0] && paddr_i[5:0] <= 6'h10) )
              begin
                reg_data_in[reg_indata_address][8*i+7:8*i] <= pwdata_i[8*i+7:8*i]; 
              end
          end
        end
      end
    endgenerate


    always_ff @( posedge pclk_i or negedge presetn_i ) begin
      if( !presetn_i ) begin
        prdata_o <= '0;
      end 
      else begin
        if( !pwrite_i && inner_request ) begin
          if( paddr_i[5:0] == CONTROL[5:0] ) begin
            prdata_o <= {reg_busy, reg_valid, reg_req_ack, reg_rst};
          end
          else if( paddr_i[5:0] >= DATA_IN[5:0] && paddr_i[5:0] <= 6'h10 ) begin
            prdata_o <= reg_data_in[reg_indata_address];
          end
          else if( paddr_i[5:0] >= DATA_OUT[5:0] && paddr_i[5:0] <= 6'h20 ) begin
            prdata_o <= reg_data_out[reg_outdata_address];
          end 
        end
      end
    end
    

    always_ff @( posedge pclk_i ) begin
      if( !presetn_i ) begin
        reg_rst <= 8'd1;
      end 
      else begin
        if( pwrite_i && inner_request && (paddr_i[5:0] == CONTROL[5:0] && pstrb_i[RST]) ) begin
          reg_rst <= pwdata_i[7:0];
        end
      end
    end
    

    always_ff @( posedge pclk_i ) begin
      if( pwrite_i && inner_request && (paddr_i[5:0] == CONTROL[5:0] && pstrb_i[REQ_ACK]) ) begin
        reg_req_ack  <= pwdata_i[15:8];
        if( cipher_valid && pwdata_i[8] ) begin
          cipher_ack <= pwdata_i[8];
        end
        else begin
          cipher_req <= pwdata_i[8];
        end
      end
      else begin
        reg_req_ack <= 8'd0;
        cipher_ack  <= 1'b0;
        cipher_req  <= 1'b0;
      end
    end

  cipher cipher(
    .clk_i      ( pclk_i         ),
    .resetn_i   ( cipher_resetn  ),
    .request_i  ( cipher_req     ),
    .ack_i      ( cipher_ack     ),
    .data_i     ( cipher_data_in ),
    .busy_o     ( cipher_busy    ),
    .valid_o    ( cipher_valid   ),
    .data_o     ( cipher_data_out)
  );

endmodule