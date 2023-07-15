`timescale 1ns / 1ps

module APB(
  input               pclk_i,
  input               presetn_i,

  input  [31:0]       paddr_i,   
  input               pwrite_i,  
  input               psel_i,          
  input  [3:0] [7:0]  pwdata_i ,
  input               penable_i,       
  
  input  [3:0]        pstrb_i,     // Recording strobe lights. This signal indicates which 
                                   // byte bands should be updated during recording 
                                   // transmission. For every 8 bits of the recording 
                                   // data bus, there is one recording strobe.
      
  output  reg         pslverr_o,   // Transmission error

  output              pready_o,    
  output  reg [31:0]  prdata_o
);
    
  wire         valid;
  wire         busy;
  
  wire [127:0] tmp_data;
  wire [31:0]  data_from  [0:3];

  reg  [31:0]  RAM [0:8];

  // When the pwrite signal is low, a read cycle is set, when the signal is high, 
  // it is set to write to the peripheral device 
  assign prdata_o = ( ~pwrite_i ) ?  RAM[paddr_i >> 2] : 0; 

  assign tmp_data = {RAM[4], RAM[3], RAM[2], RAM[1]}; 
  assign pready_o = psel_i;
    
  kuznechik kuznechik_dut(
    .resetn_i   ( presetn_i & RAM[0][0]                                    ), 
    .clk_i      ( pclk_i                                                   ), 

    .request_i  ( RAM[0][8]                                                ), 
    .ack_i      ( RAM[0][8]                                                ), 
    
    .data_i     ( tmp_data                                                 ),

    .busy_o     ( busy                                                     ), 

    .valid_o    ( valid                                                    ), 
    .data_o     ( {data_from[3], data_from[2], data_from[1], data_from[0]} )
  );


  always @( posedge pclk_i ) begin
    RAM[0][16] <= valid;                // recording a valid signal in [0][16]
    RAM[0][24] <= busy;                 // recording a busy signal in [0][24]
    if( valid & ~pwrite_i ) begin
      // 
      RAM[5]   <= data_from[0];
      RAM[6]   <= data_from[1];
      RAM[7]   <= data_from[2];
      RAM[8]   <= data_from[3];
   // Slave        
    end

    pslverr_o = 0;
    if( psel_i ) begin
      if( pwrite_i ) begin     
        if( paddr_i < 20 ) begin
          if( paddr_i == 0 ) begin
            if( ~( pstrb_i[3] ) & ~( pstrb_i[2] ) ) begin
                        
              RAM[0][0] <= pwdata_i[0];
              RAM[0][8] <= pwdata_i[1];
                    
            end
            else pslverr_o <= 1;
          end
          else RAM[paddr_i >> 2] <= pwdata_i;                  
        end
        else pslverr_o <= 1;                             
      end         
    end
  end
    
endmodule