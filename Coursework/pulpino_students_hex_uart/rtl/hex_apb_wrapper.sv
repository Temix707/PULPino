module hex_apb_wrapper
#(
  parameter APB_ADDR_WIDTH = 12,  // APB slaves are 4KB by default
  parameter APB_DATA_WIDTH = 32
)
(
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
    output logic ca, cb, cc, cd, ce, cf, cg, dp,
    output logic [7:0] an
);

  // Local declarations

  localparam ADDR_DATA0 = 12'h00;
  localparam ADDR_DATA1 = 12'h04;

  logic                      apb_sel_data0;
  logic                      apb_sel_data1;

  logic [APB_DATA_WIDTH-1:0] data0_ff;
  logic [APB_DATA_WIDTH-1:0] data1_ff;
  logic [APB_DATA_WIDTH-1:0] enable_ff;

  logic [APB_DATA_WIDTH-1:0] apb_dout_ff;
  logic [APB_DATA_WIDTH-1:0] apb_dout_next;
  logic                      apb_dout_en;

  logic                      apb_ready_ff;
  logic                      apb_ready_next;
  logic                      apb_ready_en;

  //////////////////////////
  // APB decoding         //
  //////////////////////////

  logic                      apb_write;
  logic                      apb_read;

  assign apb_write          = apb_psel_i & apb_pwrite_i;
  assign apb_read           = apb_psel_i & ~apb_pwrite_i;

  //////////////////////////
  // Data in registers    //
  //////////////////////////

  // Data 0
  always_ff @(posedge clk_i or negedge rstn_i)
    if (~rstn_i)
      data0_ff <= '0;
    else if (apb_write & (apb_paddr_i == ADDR_DATA0))
      data0_ff <= apb_pwdata_i;

  // Data 1
  always_ff @(posedge clk_i or negedge rstn_i)
    if (~rstn_i)
      data1_ff <= '0;
    else if (apb_write & (apb_paddr_i == ADDR_DATA1))
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

  assign apb_ready_next = ( apb_psel_i & apb_penable_i ) & ~apb_ready_ff;

  assign apb_ready_en = (apb_psel_i & apb_penable_i)
                      | apb_ready_ff;

  always_ff @(posedge clk_i or negedge rstn_i)
  if (~rstn_i)
    apb_ready_ff <= '0;
  else if (apb_ready_en)
    apb_ready_ff <= apb_ready_next;

  assign apb_pready_o  = apb_ready_ff;

  // не выставляем сигнал ошибки
  assign apb_pslverr_o = 0;

  
  // Instantiation
  hex_display hex_display_inst (
    .clk(clk_i),
    .rstn(rstn_i),
    .data({data1_ff, data0_ff}),

    // hex display
    .ca, .cb, .cc, .cd, .ce, .cf, .cg, .dp, .an
  );


endmodule


module hex_display(
	input clk,
	input rstn,
  input [63:0] data,
  
  output logic ca, cb, cc, cd, ce, cf, cg, dp,
  output logic [7:0] an
);

    /* В данной плате применяется динамическая индикация, поэтому нам нужно поочерёдно выводить 
      данные на каждый из индикаторов. Нам нужен делитель частоты, так как тактовая частота 50 МГц слишком большая */
    localparam COUNT_MAX = 50000;
    logic [$clog2(COUNT_MAX)-1:0] counter;
    logic [2:0] cur_index;

    always_ff @(posedge clk) begin
        if (!rstn) begin
            counter <= COUNT_MAX-1;
            cur_index <= 0;
        end else begin
            if (counter > 0) begin
                counter <= counter - 1;
            end else begin
                cur_index <= cur_index + 1;
                counter <= COUNT_MAX - 1;
            end
        end
    end
    
    // получаем данные текущего символа
    logic [7:0] cur_data, cur_enable;
    always_comb begin
      case (cur_index)
        3'd0: begin cur_data = data[7:0];   cur_enable = 8'b0000_0001; end
        3'd1: begin cur_data = data[15:8];  cur_enable = 8'b0000_0010; end
        3'd2: begin cur_data = data[23:16]; cur_enable = 8'b0000_0100; end
        3'd3: begin cur_data = data[31:24]; cur_enable = 8'b0000_1000; end
        3'd4: begin cur_data = data[39:32]; cur_enable = 8'b0001_0000; end
        3'd5: begin cur_data = data[47:40]; cur_enable = 8'b0010_0000; end
        3'd6: begin cur_data = data[55:48]; cur_enable = 8'b0100_0000; end
        3'd7: begin cur_data = data[63:56]; cur_enable = 8'b1000_0000; end
      endcase
    end

    // выводим на дисплей текущий символ
    always_ff @(posedge clk) begin
      ca <= !cur_data[0];
      cb <= !cur_data[1];
      cc <= !cur_data[2];
      cd <= !cur_data[3];
      ce <= !cur_data[4];
      cf <= !cur_data[5];
      cg <= !cur_data[6];
      dp <= !cur_data[7];
      an <= ~cur_enable;
    end

endmodule
