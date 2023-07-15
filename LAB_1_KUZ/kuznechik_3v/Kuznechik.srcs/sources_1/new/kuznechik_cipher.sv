module kuznechik_cipher(
  input                 clk_i,      // Clock signal
                        resetn_i,   // Synchronous reset signal with active LOW level
                      
                        request_i,  // The signal of the request to start encryption
                        ack_i,      // Confirmation signal for receiving encrypted data
                            
                [127:0] data_i,     // Encrypted data ( Which will begin its encryption campaign )

  output   reg          busy_o,     // A signal indicating that reception is impossible
                                    // the next encryption request, because
                                    // module in the process of encrypting the previous request
                                    
           reg          valid_o,    // Signal of readiness of encrypted data ( termination )
           reg  [127:0] data_o      // Зашифрованные данные 
);


  reg [127:0] key_mem       [0:9];
  //reg [3:0]   key_adr;

  reg [7:0]   S_box_mem     [0:255];

  reg [7:0]   L_mul_16_mem  [0:255];
  reg [7:0]   L_mul_32_mem  [0:255];
  reg [7:0]   L_mul_133_mem [0:255];
  reg [7:0]   L_mul_148_mem [0:255];
  reg [7:0]   L_mul_192_mem [0:255];
  reg [7:0]   L_mul_194_mem [0:255];
  reg [7:0]   L_mul_251_mem [0:255];

  initial begin
    $readmemh("C:/Vivado_project/Prac_Ver/Kuznechik/look_up_tables/keys.mem",                  key_mem );
    $readmemh("C:/Vivado_project/Prac_Ver/Kuznechik/look_up_tables/S_box.mem",                 S_box_mem );

    $readmemh("C:/Vivado_project/Prac_Ver/Kuznechik/look_up_tables/L_muliplications/L_16.mem", L_mul_16_mem );
    $readmemh("C:/Vivado_project/Prac_Ver/Kuznechik/look_up_tables/L_muliplications/L_32.mem", L_mul_32_mem );
    $readmemh("C:/Vivado_project/Prac_Ver/Kuznechik/look_up_tables/L_muliplications/L_133.mem",L_mul_133_mem);
    $readmemh("C:/Vivado_project/Prac_Ver/Kuznechik/look_up_tables/L_muliplications/L_148.mem",L_mul_148_mem);
    $readmemh("C:/Vivado_project/Prac_Ver/Kuznechik/look_up_tables/L_muliplications/L_192.mem",L_mul_192_mem);
    $readmemh("C:/Vivado_project/Prac_Ver/Kuznechik/look_up_tables/L_muliplications/L_194.mem",L_mul_194_mem);
    $readmemh("C:/Vivado_project/Prac_Ver/Kuznechik/look_up_tables/L_muliplications/L_251.mem",L_mul_251_mem);
  end



  typedef enum logic [2:0] { 
                     IDLE    = 3'b000,
                     KEY_PH  = 3'b001,
                     S_PH    = 3'b010,
                     L_PH    = 3'b011,
                     FINISH  = 3'b100
                           
                   } type_enum; //state, next_st
   
   type_enum state, next_st;
   
  logic [3:0] round; // Number of rounds
  logic [4:0] counter;

  logic [127:0] data_key_result;

  logic [127:0] trial_input_mux;
  assign trial_input_mux = data_i;
  
  // State Change Block / Block for State
  always_ff @( posedge clk_i or negedge resetn_i ) begin
    if( ~resetn_i ) begin
      next_st <= IDLE;    
    end 
    else begin
      state <= next_st;
    end
  end
   
   
   // The logic of transitions between states / We determine what the next state will be and it will click into this state on the next clk_i
  always_comb begin
    //next_st = IDLE;
    //next_st = state;

      case( state )
        IDLE:
          begin
            if( request_i ) begin
                            next_st = KEY_PH;
            end
          end
          
        KEY_PH:
          begin
            if( round == 9 ) begin
              data_o                = data_key_result;
              busy_o                = 0;
              valid_o               = 1;
              next_st               = FINISH;
            end 
            else begin
              next_st               = S_PH;
            end

          end
          
        S_PH:
          begin
                            next_st = L_PH;
          end 
          
        L_PH:
          begin
            if( counter < 16 ) begin
                            next_st = state;
            end else begin   
                            next_st = KEY_PH;
            end 
          end
          
        FINISH:
          begin
            if( request_i ) begin
                            next_st = KEY_PH;
            end else if ( ack_i ) begin
                            next_st = IDLE; 
            end
          end
            
        default:
          begin
                            next_st = state;
          end
      endcase
      
  end
    
    
 
  // KEY_PH  
  logic [127:0] trial_input_mux ;
  //logic [127:0] data_key_result;
  
  // S_PH
  logic [7:0]   data_key_result_bytes [15:0];
  logic [7:0]   data_linear_result    [15:0];
  
  
  // L_PH
  logic [7:0]   data_galua_in         [15:0];
  logic [7:0]   data_galua_result     [15:0];
  
    
  logic [7:0]   galua_summ;
  //logic         data_galua_shreg_en;
  logic [7:0]   data_galua_shifted    [15:0];
  logic [127:0] res_d_g_se; 

    
  always_ff @( posedge clk_i or negedge resetn_i ) begin
    if( ~resetn_i ) begin
      round                                  <= 0;
      counter                                <= 0;
      busy_o                                 <= 0;
      valid_o                                <= 0;
      trial_input_mux                        <= 0;
    end 
    else begin
      
      case( state )
        IDLE:
          begin
            if( request_i ) begin
              trial_input_mux                <= data_i;
              valid_o                        <= 1'b0;
              busy_o                         <= 1'b1;
              //counter = 0;
              //round = 0;
            end
          end

        KEY_PH:
          begin
           //round                              <= round   + 1;
           //round_key                          <= key_mem[key_adr];
            data_key_result                  <= trial_input_mux ^ key_mem[round];
           //key_adr                            <= key_adr + 1;
          end 

        S_PH:
          begin
            for( int c_adr_S = 0; c_adr_S < 16; c_adr_S = c_adr_S + 1 ) begin
              data_key_result_bytes[c_adr_S] <= data_key_result[( c_adr_S*8 ) +:8];          // Byte-by-byte data transfer [0 +: 8] => [ 7:0 ]..., [ 15:8 ]
              data_linear_result [c_adr_S]   <= S_box_mem[data_key_result_bytes[c_adr_S]];   // Each byte changes its zn-e to zn-e from the table, taken by index                       // trading data after the S phase
            end

            data_galua_in                    <= data_linear_result;
          end
      
        L_PH:
          begin
            // For each element of the resulting series, a multiplication table of 256 elements is created
            // 148, 32, 133, 16, 194, 192, 1, 251, 1, 192, 194, 16, 133, 32, 148, 1
            if(counter < 16 ) begin
              data_galua_result[0]   = L_mul_148_mem [data_galua_in[15]];
              data_galua_result[1]   = L_mul_32_mem  [data_galua_in[14]]; 
              data_galua_result[2]   = L_mul_133_mem [data_galua_in[13]]; 
              data_galua_result[3]   = L_mul_16_mem  [data_galua_in[12]]; 
              data_galua_result[4]   = L_mul_194_mem [data_galua_in[11]]; 
              data_galua_result[5]   = L_mul_192_mem [data_galua_in[10]]; 
              data_galua_result[6]   =                data_galua_in[9]  ; 
              data_galua_result[7]   = L_mul_251_mem [data_galua_in[8]] ; 
              data_galua_result[8]   =                data_galua_in[7]  ; 
              data_galua_result[9]   = L_mul_192_mem [data_galua_in[6]] ; 
              data_galua_result[10]  = L_mul_194_mem [data_galua_in[5]] ; 
              data_galua_result[11]  = L_mul_16_mem  [data_galua_in[4]] ; 
              data_galua_result[12]  = L_mul_133_mem [data_galua_in[3]] ; 
              data_galua_result[13]  = L_mul_32_mem  [data_galua_in[2]] ; 
              data_galua_result[14]  = L_mul_148_mem [data_galua_in[1]] ; 
              data_galua_result[15]  =                data_galua_in[0]  ;

              for( int c_adr_G = 0; c_adr_G < 16; c_adr_G++ ) begin
                res_d_g_se[( c_adr_G*8 ) +: 8] <= data_galua_result[c_adr_G];                  // We write it to the extended bus  [7:0] = [0]
              end

            //for( int i = 0; i < 16; i++ ) begin
              galua_summ                       <= '0;
              for( int k = 0; k < 16; k++ ) begin
                galua_summ      [7:0]          <= galua_summ ^ data_galua_result[k];          // XOR, records the resulting products, which are added together modulo 2
              end
             
              res_d_g_se        [127:0]        <= {galua_summ, res_d_g_se [127:8]};           // Shift register
             
              for( int j = 0; j < 16; j++ ) begin
                data_galua_shifted[j]          <= res_d_g_se[( j*8 ) +: 8];                    // I score with new values 0 = 7:0
              end

              data_galua_in                    <= data_galua_shifted; 
              counter                          <= counter + 1;
            end
            else begin
              for( int i = 0; i < 16; i++ ) begin
                trial_input_mux[( i+1 ) * 8 - 1 -: 8] = data_galua_in[i];
              end

              counter                         <= 0;
              round                           <= round + 1;

            end
          end  
      
        FINISH:
          begin
            if( request_i ) begin
              trial_input_mux                 <= data_i;
              counter                         <= 0;
              round                           <= 0; 
              busy_o                          <= 1;
              valid_o                         <= 0;

            end 
            else if ( ack_i ) begin
              valid_o                         <= 1'b0; 
            end
          end 
      endcase
    end
  end

endmodule   