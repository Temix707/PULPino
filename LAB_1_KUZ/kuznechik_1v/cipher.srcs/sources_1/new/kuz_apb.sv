/*module kuz_apb(

    // Clock and reset
    input  logic            pclk_i,
    input  logic            presetn_i,

    // Address
    input  logic     [31:0] paddr_i,

    // Control-status
    input  logic            psel_i, //выбор устройства
    input  logic            penable_i, //начало фазы записи данных
    input  logic            pwrite_i,

    // Write
    input  logic [3:0][7:0] pwdata_i,
    input  logic      [3:0] pstrb_i,

    // Slave
    output logic            pready_o,
    output logic     [31:0] prdata_o,
    output logic            pslverr_o

);
    
    import kuznechik_cipher_apb_wrapper_pkg::*;
    localparam ADDR_LEN = 6;
    

    
    logic [7:0] reg_rst, reg_req_ack, reg_valid, reg_busy;
    logic [31:0] reg_data_in[0:3], reg_data_out[0:3];
    assign reg_valid[7:1] = 7'b0;
    assign reg_busy[7:1] = 7'b0;
    
    //чтение,запись с переферии
   
    logic [127:0] kuz_data_in, kuz_data_out;
    generate
        for (genvar i=0; i<4; i++) begin
            assign kuz_data_in[i*32+31:i*32] = reg_data_in[i];
            assign reg_data_out[i] = kuz_data_out[i*32+31:i*32];
        end
    endgenerate
    
    logic kuz_resetn, kuz_req, kuz_ack, kuz_busy, kuz_valid;
    
  kuznechik cipher(
    .clk_i      ( pclk_i     ),
    .resetn_i   ( resetn_k   ),
    .request_i  ( req_k      ),
    .ack_i      ( ack_k      ),
    .data_i     ( data_k_in  ),
    .busy_o     ( busy_k     ),
    .valid_o    ( valid_k    ),
    .data_o     ( data_k_out )
  );
    
    
    // Âûñòàâëÿåì ñèãíàë ñáðîñà äëÿ ìîäóëÿ øèôðîâàíèÿ è ñîñòîÿíèÿ ðåãèñòðîâ VALID è BUSY
    assign kuz_resetn = presetn_i && reg_rst[0];
    assign reg_valid[0] = kuz_valid;
    assign reg_busy[0] = kuz_busy;


    // фаза адреса(один такт)
    logic req;
    assign req = psel_i && !penable_i; 
    
    // Âûñòàâëÿåì ñèãíàë çàâåðøåíèÿ îïåðàöèè íà øèíó
    always_ff @(posedge pclk_i)
        pready_o <= req; //сигнал готовности переферийного устройства,должны установить до начала фазы записи данных(penable)


    //разграничение адрессного пространства
    logic is_addr_reg_in, is_addr_reg_out;
    logic [ADDR_LEN-3:0] addr_reg_in, addr_reg_out;
    assign is_addr_reg_in = (paddr_i[ADDR_LEN:0]>=DATA_IN) && (paddr_i[ADDR_LEN:0]<DATA_IN+16);
    assign is_addr_reg_out = (paddr_i[ADDR_LEN:0]>=DATA_OUT) && (paddr_i[ADDR_LEN:0]<DATA_OUT+16);
    assign addr_reg_in = (paddr_i[ADDR_LEN:0] - DATA_IN) >> 2; //смещение относительно базового адреса
    assign addr_reg_out = (paddr_i[ADDR_LEN:0] - DATA_OUT) >> 2;


    // второй такт,выставляет данные по адресу в регистры in и out
    always_ff @(posedge pclk_i) begin
        if (!presetn_i) begin
            prdata_o <= '0;
        end else if (req && !pwrite_i) begin
            if (paddr_i[ADDR_LEN:2] == '0) begin
                prdata_o <= {reg_busy, reg_valid, reg_req_ack, reg_rst};
            end else if (is_addr_reg_in) begin
                prdata_o <= reg_data_in[addr_reg_in];
            end else if (is_addr_reg_out) begin
                prdata_o <= reg_data_out[addr_reg_out];
            end
        end
    end
    
    
    // Ðåàëèçóåì îïåðàöèþ çàïèñè
    logic is_addr_reg_rst, is_addr_reg_req_ack;
    assign is_addr_reg_rst = (paddr_i[ADDR_LEN:2] == '0) && pstrb_i[0];
    assign is_addr_reg_req_ack = (paddr_i[ADDR_LEN:2] == '0) && pstrb_i[1];
    
    // запись сбороса
    always_ff @(posedge pclk_i) begin
        if (!presetn_i) begin
            reg_rst <= '1;
        end else if (req && pwrite_i && is_addr_reg_rst) begin
            reg_rst <= pwdata_i[RST];
        end
    end

    // запись ACK/req
    always_ff @(posedge pclk_i) begin
        if (presetn_i && req && pwrite_i && is_addr_reg_req_ack) begin
            reg_req_ack <= pwdata_i[REQ_ACK];
            if (pwdata_i[REQ_ACK][0]) begin
                if (kuz_valid) begin
                    kuz_ack <= 1'b1;
                end else begin
                    kuz_req <= 1'b1;
                end
            end
        end else begin // ñáðîñ èëè îòñóòñòâèå îïåðàöèè çàïèñè ê ýòîìó ðåãèñòðó
            reg_req_ack <= '0;
            kuz_req <= 1'b0;
            kuz_ack <= 1'b0;
        end
    end
    
    // побайтовая запись
    generate
        for (genvar i=0; i<4; i++)
            always_ff @(posedge pclk_i) begin
                if (presetn_i && req && pwrite_i && is_addr_reg_in) begin
                    if (pstrb_i[i])
                        reg_data_in[addr_reg_in][8*i+7:8*i] <= pwdata_i[i]; 
                end
             end
    endgenerate
    

    // Âûñòàâëåíèå ñèãíàëà îøèáêè
    logic err, err_apb, err_no_reg, err_misaligned, err_wr2ro_reg, err_fsm;
    assign err_apb = 1'b0;
    assign err_no_reg = !(paddr_i[ADDR_LEN-1:2]=='0) && !is_addr_reg_in && !is_addr_reg_out;
    assign err_misaligned = paddr_i[1:0] != 2'b0;
    assign err_wr2ro_reg = pwrite_i && ((paddr_i[ADDR_LEN:2]=='0) && (pstrb_i[VALID] || pstrb_i[BUSY]) || is_addr_reg_out);
    assign err_fsm = (pwrite_i && is_addr_reg_req_ack && pwdata_i[REQ_ACK][0]) && (!kuz_valid && kuz_busy);
    assign err = err_apb || err_no_reg || err_misaligned || err_wr2ro_reg || err_fsm;

    always @(posedge pclk_i) begin
        if (req) begin
            pslverr_o <= err;
        end else begin
            pslverr_o <= 1'b0;
        end
    end
    
    
endmodule*/



















module kuz_apb(
  input  logic             pclk_i   ,
  input  logic             presetn_i,

  input  logic      [31:0] paddr_i  ,

  // Control-status
  input  logic             psel_i   , 
  input  logic             penable_i,
  input  logic             pwrite_i ,

  // Writes
  input  logic [3:0][7:0]  pwdata_i ,                // [8b][8b][8b][8b]
  input  logic      [3:0]  pstrb_i  ,

  // Slave
  output logic             pready_o ,
  output logic      [31:0] prdata_o ,
  output logic             pslverr_o

);

  localparam ADDR_LEN = 6;
    
  import kuznechik_cipher_apb_wrapper_pkg::*;
      
  logic        resetn_k, req_k, ack_k, busy_k, valid_k;
  logic [7:0]  reg_rst, reg_req_ack, reg_valid, reg_busy; // We set 8 bits each to set them in prdata

  logic [31:0] reg_data_in  [0:3];    // 138-150
  logic [31:0] reg_data_out [0:3];
  
  assign reg_valid[7:1] = 7'b0;
  assign reg_busy [7:1] = 7'b0;
    
  //чтение,запись с переферии
  logic [127:0] data_k_in, data_k_out;

  generate
    for( genvar i = 0; i < 4; i++ ) begin
      assign data_k_in   [i * 32 + 31:i * 32] = reg_data_in[i];                    // [31:0][63:32].. +-[0][1]..
      assign reg_data_out[i]                  = data_k_out [ i * 32 + 31:i * 32];
    end
  endgenerate
    
  kuznechik cipher(
    .clk_i      ( pclk_i     ),
    .resetn_i   ( resetn_k   ),
    .request_i  ( req_k      ),
    .ack_i      ( ack_k      ),
    .data_i     ( data_k_in  ),
    .busy_o     ( busy_k     ),
    .valid_o    ( valid_k    ),
    .data_o     ( data_k_out )
  );
    
  // Connecting the apb to kuz
  assign resetn_k     = presetn_i && reg_rst[0];
  assign reg_valid[0] = valid_k;
  assign reg_busy[0]  = busy_k;

  // address phase (one clock cycle before raising the penable signal)
  logic  req_f_a = psel_i && !penable_i;  // address phase
  
  // First, signals come from the address phase, after which the pready is restored on the next clock cycle
  always_ff @( posedge pclk_i )
    pready_o <= req_f_a; // сигнал готовности переферийного устройства,должны установить до начала фазы записи данных(penable)



  // delimiting the address space
  logic                is_addr_sp_reg_in, is_addr_sp_reg_out;  // Getting into the address space
  logic [ADDR_LEN-3:0] addr_sp_reg_in, addr_sp_reg_out;        // [3:0]

  // 14 - 20 'h - it is set to 1 if the address space is included in this interval
  //               adr (14-20 'h)             adr[6:0] > data_in  &&  adr[6:0] < data_in + 16 (4 + 16 = 20'h = 100000)
  assign is_addr_sp_reg_in  = ( paddr_i[ADDR_LEN:0] >= DATA_IN  ) && ( paddr_i[ADDR_LEN:0] < DATA_IN  + 16 ); 

  //                                          adr[6:0] > data_out  &&  adr[6:0] < data_out + 16 (14 + 16 = 20'h)
  assign is_addr_sp_reg_out = ( paddr_i[ADDR_LEN:0] >= DATA_OUT ) && ( paddr_i[ADDR_LEN:0] < DATA_OUT + 16 );

  // offset relative to the base address
  assign addr_sp_reg_in     = ( paddr_i[ADDR_LEN:0]  - DATA_IN  ) >> 2; // (20-4=16 >> 2) -> 4
  assign addr_sp_reg_out    = ( paddr_i[ADDR_LEN:0]  - DATA_OUT ) >> 2;



  // the second clock cycle exposes the address data to the in and out registers
  always_ff @( posedge pclk_i ) begin
    if( !presetn_i ) begin
      prdata_o   <= '0;
    end 
    else if( req_f_a && !pwrite_i ) begin   // still in the address phase
      if( paddr_i[ADDR_LEN:2] == '0 ) begin 
        prdata_o <= {reg_busy, reg_valid, reg_req_ack, reg_rst};
      end 
      else if( is_addr_sp_reg_in ) begin
        prdata_o <= reg_data_in[addr_sp_reg_in];
      end 
      else if( is_addr_sp_reg_out ) begin
        prdata_o <= reg_data_out[addr_sp_reg_out];
      end
    end
  end
    
    

  logic  is_addr_reg_rst, is_addr_reg_req_ack;
  
  assign is_addr_reg_rst     = ( paddr_i[ADDR_LEN:2] == '0 ) && pstrb_i[0];
  assign is_addr_reg_req_ack = ( paddr_i[ADDR_LEN:2] == '0 ) && pstrb_i[1];
    
  // запись сбороса
  always_ff @( posedge pclk_i ) begin
    if( !presetn_i ) begin
      reg_rst <= '1;
    end 
    else if( req_f_a && pwrite_i && is_addr_reg_rst ) begin
      reg_rst <= pwdata_i[RST];
    end
  end

  // запись ACK/req
  always_ff @( posedge pclk_i ) begin
    if( presetn_i && req_f_a && pwrite_i && is_addr_reg_req_ack ) begin
      
      reg_req_ack <= pwdata_i[REQ_ACK];
      
      if( pwdata_i[REQ_ACK][0] ) begin
        if( valid_k ) begin
          ack_k <= 1'b1;
        end 
        else begin
          req_k <= 1'b1;
        end
      end
    end 
    
    else begin // ñáðîñ èëè îòñóòñòâèå îïåðàöèè çàïèñè ê ýòîìó ðåãèñòðó
      reg_req_ack <= '0;
      req_k       <= 1'b0;
      ack_k       <= 1'b0;
    end
  end
    
  // побайтовая запись
  generate
    for( genvar i = 0; i < 4; i++ ) begin
      always_ff @( posedge pclk_i ) begin
        if( presetn_i && req_f_a && pwrite_i && is_addr_sp_reg_in ) begin
          if( pstrb_i[i] ) begin
            
            reg_data_in[addr_sp_reg_in][8 * i + 7:8 * i] <= pwdata_i[i]; 
          
          end
        end
      end
    end
  endgenerate
    
  // Âûñòàâëåíèå ñèãíàëà îøèáêè
  logic err, err_apb, err_no_reg, err_misaligned, err_wr2ro_reg, err_fsm;
    
  assign err_apb        = 1'b0;
  assign err_no_reg     = !( paddr_i[ADDR_LEN-1:2]=='0 ) && !is_addr_sp_reg_in && !is_addr_sp_reg_out;
  assign err_misaligned = paddr_i[1:0] != 2'b0;
  assign err_wr2ro_reg  = pwrite_i && (( paddr_i[ADDR_LEN:2]=='0 ) && ( pstrb_i[VALID] || pstrb_i[BUSY] ) || is_addr_sp_reg_out );
  assign err_fsm        = ( pwrite_i && is_addr_reg_req_ack && pwdata_i[REQ_ACK][0] ) && ( !valid_k && busy_k );
  assign err            = err_apb || err_no_reg || err_misaligned || err_wr2ro_reg || err_fsm;

  always @( posedge pclk_i ) begin
    if( req_f_a ) begin
      pslverr_o <= err;
    end
    else begin
      pslverr_o <= 1'b0;
    end
  end  
    
endmodule