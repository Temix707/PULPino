module temp_apb_wrapper
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

    // temp
    inout logic tmp_scl,
    inout logic tmp_sda,
    
    input logic tmp_int,
    input logic tmp_ct
);

  // Local declarations

  localparam ADDR_TEMP_VAL = 12'h00;

  logic apb_write;
  logic apb_read;
  logic apb_sel_temp_val;

  logic [12:0] temp_val;
  logic [12:0] temp_val_ff;
  logic temp_ready;

  //////////////////////////
  // Instantiation        //
  //////////////////////////
  
  TempSensorCtl TempSensorCtlInst (
    .TMP_SCL(tmp_scl),
    .TMP_SDA(tmp_sda),
    // TMP_INT : in STD_LOGIC; -- Interrupt line from the ADT7420, not used in this project
    // TMP_CT : in STD_LOGIC;  -- Critical Temperature interrupt line from ADT7420, not used in this project

    .TEMP_O(temp_val), // 12-bit two's complement temperature with sign bit
    .RDY_O(temp_ready), // '1' when there is a valid temperature reading on TEMP_O
    .ERR_O(), // '1' if communication error

    .CLK_I(clk_i),
    .SRST_I(!rstn_i)
  );


  //////////////////////////
  // APB decoding         //
  //////////////////////////

  assign apb_write = apb_psel_i & apb_pwrite_i;
  assign apb_read = apb_psel_i & ~apb_pwrite_i;

  assign apb_sel_temp_val = (apb_paddr_i == ADDR_TEMP_VAL);


  //////////////////////////
  // APB data out         //
  //////////////////////////

  logic [APB_DATA_WIDTH-1:0] apb_dout_ff;
  logic [APB_DATA_WIDTH-1:0] apb_dout_next;

  assign apb_dout_next = apb_sel_temp_val ? APB_DATA_WIDTH'(temp_val_ff) 
                                          : '0;

  // Output values temp
  always_ff @(posedge clk_i or negedge rstn_i)
    if (~rstn_i)
      temp_val_ff <= '0;
    else if (temp_ready)
      temp_val_ff <= temp_val;

  // Output values
  always_ff @(posedge clk_i or negedge rstn_i)
    if (~rstn_i)
      apb_dout_ff <= '0;
    else if (apb_read)
      apb_dout_ff <= apb_dout_next;

  assign apb_prdata_o  = apb_dout_ff;


  //////////////////////////
  // APB ready            //
  //////////////////////////

  logic apb_ready_ff;

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

endmodule
