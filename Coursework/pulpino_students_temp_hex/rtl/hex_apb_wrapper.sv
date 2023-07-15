module hex_apb_wrapper
#(
  parameter APB_ADDR_WIDTH = 12,  // APB slaves are 4KB by default
  parameter APB_DATA_WIDTH = 32
) (
    input  logic                      clk_i,
    input  logic                      rstn_i,
    input  logic [APB_ADDR_WIDTH-1:0] apb_paddr_i,
    input  logic [APB_DATA_WIDTH-1:0] apb_pwdata_i,
    input  logic                      apb_pwrite_i,
    input  logic                      apb_psel_i,
    input  logic                      apb_penable_i,
    output logic [APB_DATA_WIDTH-1:0] apb_prdata_o,
    output logic                      apb_pready_o,
    output logic                      apb_pslverr_o,

    // hex display
    output logic ca,
    output logic cb,
    output logic cc,
    output logic cd,
    output logic ce,
    output logic cf,
    output logic cg,
    output logic dp,
    output logic [7:0] an
);

  // Local declarations

  localparam ADDR_DATA0 = 12'h00;
  localparam ADDR_DATA1 = 12'h04;

  logic                      apb_sel_data0;
  logic                      apb_sel_data1;

  logic                      apb_write;
  logic                      apb_read;

  logic [APB_DATA_WIDTH-1:0] data0_ff;
  logic [APB_DATA_WIDTH-1:0] data1_ff;

  //logic [APB_DATA_WIDTH-1:0] enable_ff;

  logic [APB_DATA_WIDTH-1:0] apb_dout_ff;
  logic [APB_DATA_WIDTH-1:0] apb_dout_next;
  logic                      apb_dout_en;

  logic                      apb_ready_ff;


  //////////////////////////
  // APB decoding         //
  //////////////////////////

  assign apb_write = apb_psel_i & apb_pwrite_i;
  assign apb_read = apb_psel_i & ~apb_pwrite_i;

  assign apb_sel_data0 = (apb_paddr_i == ADDR_DATA0);
  assign apb_sel_data1 = (apb_paddr_i == ADDR_DATA1);


  //////////////////////////
  // Data in registers    //
  //////////////////////////


  // Data 0
  always_ff @(posedge clk_i or negedge rstn_i)
    if (~rstn_i)
      data0_ff <= '0;
    else if (apb_write & apb_sel_data0)
      data0_ff <= apb_pwdata_i;

  // Data 1
  always_ff @(posedge clk_i or negedge rstn_i)
    if (~rstn_i)
      data1_ff <= '0;
    else if (apb_write & apb_sel_data1)
      data1_ff <= apb_pwdata_i;

  //////////////////////////
  // APB data out         //
  //////////////////////////

  assign apb_dout_next = apb_sel_data0     ? APB_DATA_WIDTH'(data0_ff)
                       : apb_sel_data1     ? APB_DATA_WIDTH'(data1_ff)
                       :                      '0;

  assign apb_dout_en = apb_read;

  always_ff @(posedge clk_i or negedge rstn_i)
  if (~rstn_i)
    apb_dout_ff <= '0;
  else if (apb_dout_en)
    apb_dout_ff <= apb_dout_next;

  assign apb_prdata_o  = apb_dout_ff;


  //////////////////////////
  // APB ready            //
  //////////////////////////

  always_ff @(posedge clk_i or negedge rstn_i)
  if (~rstn_i)
    apb_ready_ff <= '0;
  else if ((apb_psel_i & apb_penable_i) | apb_ready_ff)
    apb_ready_ff <= ( apb_psel_i & apb_penable_i ) & ~apb_ready_ff;

  assign apb_pready_o  = apb_ready_ff;


  //////////////////////////
  // APB error            //
  //////////////////////////

  assign apb_pslverr_o = 0;

  
  //////////////////////////
  // Instantiation        //
  //////////////////////////
  
  hex_display hex_display_inst (
    .clk(clk_i),
    .rstn(rstn_i),
    .str({data1_ff, data0_ff}),

    // hex display
    .ca,
    .cb,
    .cc,
    .cd,
    .ce,
    .cf,
    .cg,
    .dp,
    .an
  );


endmodule


module hex_display(
	input clk,
	input rstn,
  input [63:0] str,
  
  // hex display
  output logic ca,
  output logic cb,
  output logic cc,
  output logic cd,
  output logic ce,
  output logic cf,
  output logic cg,
  output logic dp,
  output logic [7:0] an
);

    // Динамическая индикация
    localparam COUNT_MAX = 80000;
    logic [$clog2(COUNT_MAX)-1:0] counter;
    logic [2:0] index;

    always_ff @(posedge clk) begin
        if (!rstn) begin
            counter   <= '0;
            index     <= '0;
        end else begin
            if (counter == COUNT_MAX-1) begin
              index   <= index + 1;
              counter <= '0;
            end else begin
              counter <= counter + 1;
            end
        end
    end
    
    // получаем ASCII код текущего символа и значение an для выбора текущего индикатора 
    logic [7:0] symbol, choose;
    always_ff @(posedge clk) begin
      case (index)
        3'd0: symbol <= str[7:0];
        3'd1: symbol <= str[15:8];
        3'd2: symbol <= str[23:16];
        3'd3: symbol <= str[31:24];
        3'd4: symbol <= str[39:32];
        3'd5: symbol <= str[47:40];
        3'd6: symbol <= str[55:48];
        3'd7: symbol <= str[63:56];
      endcase
      choose <= 8'b1 << index;
    end

    // осуществляем преобразование ASCII кода символа в значения индикаторов
    logic [7:0] conv_table[128] = {
      8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00,
      8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00,
      8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00,
      8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00,
      8'h00, 8'h86, 8'h22, 8'hDC, 8'h2D, 8'h6B, 8'h53, 8'h02,
      8'h70, 8'h0F, 8'h63, 8'h46, 8'h80, 8'h40, 8'h80, 8'h52,
      8'h3F, 8'h06, 8'h5B, 8'h4F, 8'h66, 8'h6D, 8'h7D, 8'h07,
      8'h7F, 8'h6F, 8'h09, 8'h58, 8'h58, 8'h48, 8'h4C, 8'hA7,
      8'h5D, 8'h77, 8'h7C, 8'h39, 8'h5E, 8'h79, 8'h71, 8'h6F,
      8'h74, 8'h30, 8'h0E, 8'h75, 8'h38, 8'h55, 8'h37, 8'h5C,
      8'h73, 8'h67, 8'h49, 8'h6D, 8'h78, 8'h1C, 8'h3E, 8'h7E,
      8'h76, 8'h6E, 8'h5B, 8'h02, 8'h64, 8'h39, 8'h23, 8'h08,
      8'h02, 8'h77, 8'h7C, 8'h58, 8'h5E, 8'h79, 8'h71, 8'h6F,
      8'h74, 8'h30, 8'h0E, 8'h75, 8'h38, 8'h55, 8'h54, 8'h5C,
      8'h73, 8'h67, 8'h50, 8'h6D, 8'h78, 8'h1C, 8'h3E, 8'h7E,
      8'h76, 8'h6E, 8'h5B, 8'h46, 8'h30, 8'h70, 8'h01, 8'h00
    };
    
    logic [7:0] segments_state, choose_ff;
    always_ff @(posedge clk) begin
      segments_state <= conv_table[symbol];
      choose_ff <= choose;
    end
    
    // выводим на дисплей текущий символ
    always_ff @(posedge clk) begin
      ca <= !segments_state[0];
      cb <= !segments_state[1];
      cc <= !segments_state[2];
      cd <= !segments_state[3];
      ce <= !segments_state[4];
      cf <= !segments_state[5];
      cg <= !segments_state[6];
      dp <= !segments_state[7];
      an <= ~choose_ff;
    end

endmodule
