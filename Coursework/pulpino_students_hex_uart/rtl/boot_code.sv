// Copyright 2017 ETH Zurich and University of Bologna.
// Copyright and related rights are licensed under the Solderpad Hardware
// License, Version 0.51 (the “License�?); you may not use this file except in
// compliance with the License.  You may obtain a copy of the License at
// http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
// or agreed to in writing, software, hardware and materials distributed under
// this License is distributed on an “AS IS�? BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.

module boot_code
(
    input  logic        CLK,
    input  logic        RSTN,

    input  logic        CSN,
    input  logic [9:0]  A,
    output logic [31:0] Q
  );

  /*const logic [0:1023] [31:0] mem = {
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h00000013,
    32'h0100006F,
    32'h0100006F,
    32'h0080006F,
    32'h0040006F,
    32'h0000006F,
    32'h00000093,
    32'h00008113,
    32'h00008193,
    32'h00008213,
    32'h00008293,
    32'h00008313,
    32'h00008393,
    32'h00008413,
    32'h00008493,
    32'h00008513,
    32'h00008593,
    32'h00008613,
    32'h00008693,
    32'h00008713,
    32'h00008793,
    32'h00008813,
    32'h00008893,
    32'h00008913,
    32'h00008993,
    32'h00008A13,
    32'h00008A93,
    32'h00008B13,
    32'h00008B93,
    32'h00008C13,
    32'h00008C93,
    32'h00008D13,
    32'h00008D93,
    32'h00008E13,
    32'h00008E93,
    32'h00008F13,
    32'h00008F93,
    32'h00100117,
    32'hEF410113,
    32'h00000D17,
    32'h7F8D0D13,
    32'h00000D97,
    32'h7F0D8D93,
    32'h01BD5863,
    32'h000D2023,
    32'h004D0D13,
    32'hFFADDCE3,
    32'h00000513,
    32'h00000593,
    32'h072000EF,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h00000000,
    32'h46811101,
    32'h45A14601,
    32'h09F00513,
    32'h00EFCE06,
    32'h05133620,
    32'h00EF0400,
    32'h45813B60,
    32'h00EF4501,
    32'h45813960,
    32'h00EF4501,
    32'h00283DE0,
    32'h04000593,
    32'h420000EF,
    32'h55134722,
    32'h157D0187,
    32'hDE8717B3,
    32'h21900713,
    32'h00A03533,
    32'h00E78863,
    32'h07616709,
    32'h37B38F99,
    32'h953E00F0,
    32'h610540F2,
    32'h715D8082,
    32'hC6864505,
    32'hC2A6C4A2,
    32'hDE4EC0CA,
    32'hDA56DC52,
    32'hD65ED85A,
    32'hD266D462,
    32'h00EFD06A,
    32'h458525A0,
    32'h00EF4501,
    32'h67854460,
    32'hBB878793,
    32'h0037C0FB,
    32'h00010001,
    32'h27B74711,
    32'hC3D81A10,
    32'hF65FF0EF,
    32'h8537C911,
    32'h05930000,
    32'h05130240,
    32'h00EF7185,
    32'hA0014760,
    32'h00008537,
    32'h051345C5,
    32'h00EF7405,
    32'h45A14660,
    32'h46014681,
    32'h00EF4519,
    32'h45012A60,
    32'h2FC000EF,
    32'h45054581,
    32'h32C000EF,
    32'h358000EF,
    32'h10055433,
    32'hFE143CE3,
    32'h80000637,
    32'h069345A1,
    32'h06130200,
    32'h05133486,
    32'h00EF0710,
    32'h45012760,
    32'h2CC000EF,
    32'h85224581,
    32'h2FC000EF,
    32'h328000EF,
    32'h10055533,
    32'hFE153CE3,
    32'h45214581,
    32'h298000EF,
    32'h02000693,
    32'h45A14601,
    32'h0EB00513,
    32'h244000EF,
    32'h10000513,
    32'h298000EF,
    32'h45094581,
    32'h2C8000EF,
    32'h10000593,
    32'h00EF850A,
    32'h853730A0,
    32'h45D50000,
    32'h75450513,
    32'h49024CB2,
    32'h44C24C12,
    32'h4B724AD2,
    32'h3C4000EF,
    32'h45214581,
    32'h24C000EF,
    32'h07905E63,
    32'h49816421,
    32'h412C0C33,
    32'h00008BB7,
    32'h7B040413,
    32'h00008A37,
    32'h16136D05,
    32'h06930089,
    32'h45A10200,
    32'h0EB00513,
    32'h1DC000EF,
    32'h00EF6521,
    32'h45812320,
    32'h00EF4509,
    32'h05332620,
    32'h65A1012C,
    32'h2A4000EF,
    32'h85134599,
    32'h00EF76CB,
    32'hD51336E0,
    32'h45850049,
    32'h00EF9522,
    32'hB5333620,
    32'h4585F649,
    32'h00EF9522,
    32'h09853560,
    32'h05134599,
    32'h00EF774A,
    32'h996A34A0,
    32'h388000EF,
    32'hFB3C91E3,
    32'h24C000EF,
    32'h10055533,
    32'hFE153CE3,
    32'h00008537,
    32'h051345B5,
    32'h00EF77C5,
    32'h00EF3260,
    32'h45813660,
    32'h00EF4521,
    32'h5E631AA0,
    32'h64210760,
    32'h409A89B3,
    32'h8BB74901,
    32'h04130000,
    32'h8A377B04,
    32'h6A850000,
    32'h00849613,
    32'h02000693,
    32'h051345A1,
    32'h00EF0EB0,
    32'h652113A0,
    32'h190000EF,
    32'h45094581,
    32'h1C0000EF,
    32'h00998533,
    32'h00EF65A1,
    32'h45992020,
    32'h76CB8513,
    32'h2CC000EF,
    32'h00495513,
    32'h95224585,
    32'h2C0000EF,
    32'hF6493533,
    32'h95224585,
    32'h2B4000EF,
    32'h45990905,
    32'h774A0513,
    32'h2A8000EF,
    32'h00EF94D6,
    32'h11E32E60,
    32'h8537FB2B,
    32'h05930000,
    32'h05130220,
    32'h00EF78C5,
    32'h00EF28E0,
    32'h77B72CE0,
    32'hA4231A10,
    32'h07930007,
    32'h80670800,
    32'h00010007,
    32'h00010001,
    32'h450140B6,
    32'h44964426,
    32'h59F24906,
    32'h5AD25A62,
    32'h5BB25B42,
    32'h5C925C22,
    32'h61615D02,
    32'h00008082,
    32'hFF010113,
    32'h00812423,
    32'h00000593,
    32'h00050413,
    32'h00F00513,
    32'h00112623,
    32'h294000EF,
    32'h00000593,
    32'h00E00513,
    32'h288000EF,
    32'h00000593,
    32'h00D00513,
    32'h27C000EF,
    32'h00000593,
    32'h00C00513,
    32'h270000EF,
    32'h04805663,
    32'h00000593,
    32'h01000513,
    32'h260000EF,
    32'h02142E63,
    32'h00000593,
    32'h00B00513,
    32'h250000EF,
    32'h02242663,
    32'h00000593,
    32'h00000513,
    32'h240000EF,
    32'h00342E63,
    32'h00C12083,
    32'h00812403,
    32'h00000593,
    32'h00100513,
    32'h01010113,
    32'h2240006F,
    32'h00C12083,
    32'h00812403,
    32'h01010113,
    32'h00008067,
    32'h00004837,
    32'hF0080813,
    32'h00869693,
    32'h02000713,
    32'h1A1027B7,
    32'h40B70733,
    32'h0106F6B3,
    32'hF265B5B3,
    32'h00E51533,
    32'h00878813,
    32'h00C78713,
    32'h00B6E5B3,
    32'h01078793,
    32'h00A82023,
    32'h00C72023,
    32'h00B7A023,
    32'h00008067,
    32'h01059593,
    32'h10055533,
    32'h00A5E5B3,
    32'h1A1027B7,
    32'h00B7AA23,
    32'h00008067,
    32'h1A102737,
    32'h01070713,
    32'h00072783,
    32'hFF010113,
    32'h00F12623,
    32'h00C12783,
    32'h1007D7B3,
    32'h01051513,
    32'h00F56533,
    32'h00A12623,
    32'h00C12783,
    32'h00F72023,
    32'h01010113,
    32'h00008067,
    32'h00100793,
    32'h00858593,
    32'h00B795B3,
    32'h00A79533,
    32'h000017B7,
    32'hF0078793,
    32'h00F5F5B3,
    32'hEE853533,
    32'h00A5E533,
    32'h1A1027B7,
    32'h00A7A023,
    32'h00008067,
    32'h1A1027B7,
    32'h0007A783,
    32'hFF010113,
    32'h00F12623,
    32'h00C12503,
    32'h01010113,
    32'h00008067,
    32'hD45597B3,
    32'hFF010113,
    32'hF455B5B3,
    32'h00F12423,
    32'h00058863,
    32'h00812783,
    32'h00178793,
    32'h00F12423,
    32'h00012623,
    32'h00C12683,
    32'h1A102737,
    32'h00812783,
    32'h02070813,
    32'h02F6DE63,
    32'h00072783,
    32'hCF0797B3,
    32'hFE078CE3,
    32'h00C12783,
    32'h00082583,
    32'h00C12683,
    32'h00168693,
    32'h00D12623,
    32'h01010613,
    32'h00279793,
    32'hFFC62603,
    32'h00812683,
    32'h00B567A3,
    32'hFCD646E3,
    32'h01010113,
    32'h00008067,
    32'h1A107737,
    32'h00470713,
    32'h00072603,
    32'h1A1007B7,
    32'hC0164633,
    32'h00C72023,
    32'h00478693,
    32'h00C78513,
    32'h0085D813,
    32'h08300713,
    32'h0FF5F593,
    32'h00E52023,
    32'h0106A023,
    32'h0A700713,
    32'h00B7A42B,
    32'h00E7A023,
    32'h00300793,
    32'h00F52023,
    32'h0006A783,
    32'h0F07F793,
    32'hC017C7B3,
    32'h00F6A023,
    32'h00008067,
    32'h1A100737,
    32'h01470713,
    32'h02058863,
    32'h04000693,
    32'h00072783,
    32'h0207F793,
    32'hFE078CE3,
    32'h0015460B,
    32'h1A1007B7,
    32'hFFF58593,
    32'h00C7A023,
    32'hFFF68693,
    32'h00069663,
    32'hFC059CE3,
    32'h00008067,
    32'hFC059AE3,
    32'h00008067,
    32'h1A100737,
    32'h01470713,
    32'h00072783,
    32'h0407F793,
    32'hFE078CE3,
    32'h00008067,
    32'h1A1076B7,
    32'h0006A783,
    32'hFF010113,
    32'h00F12623,
    32'h00100793,
    32'h00A797B3,
    32'h00C12703,
    32'hFFF7C793,
    32'h00E7F7B3,
    32'h00F12623,
    32'h00C12783,
    32'h00A595B3,
    32'h00F5E533,
    32'h00A12623,
    32'h00C12783,
    32'h00F6A023,
    32'h01010113,
    32'h00008067,
    32'h4F525245,
    32'h53203A52,
    32'h736E6170,
    32'h206E6F69,
    32'h20495053,
    32'h73616C66,
    32'h6F6E2068,
    32'h6F662074,
    32'h0A646E75,
    32'h00000000,
    32'h64616F4C,
    32'h20676E69,
    32'h6D6F7266,
    32'h49505320,
    32'h0000000A,
    32'h79706F43,
    32'h20676E69,
    32'h74736E49,
    32'h74637572,
    32'h736E6F69,
    32'h0000000A,
    32'h636F6C42,
    32'h0000206B,
    32'h6E6F6420,
    32'h00000A65,
    32'h79706F43,
    32'h20676E69,
    32'h61746144,
    32'h0000000A,
    32'h656E6F44,
    32'h756A202C,
    32'h6E69706D,
    32'h6F742067,
    32'h736E4920,
    32'h63757274,
    32'h6E6F6974,
    32'h4D415220,
    32'h00000A2E,
    32'h33323130,
    32'h37363534,
    32'h42413938,
    32'h46454443,
    32'h00000010,
    32'h00000000,
    32'h00527A01,
    32'h01010401,
    32'h00020D1B,
    32'h00000014,
    32'h00000018,
    32'hFFFFF974,
    32'h0000005E,
    32'h200E4200,
    32'h7F01114C,
    32'h00000038,
    32'h00000030,
    32'hFFFFF9BA,
    32'h00000274,
    32'h500E4200,
    32'h7F01115A,
    32'h117E0811,
    32'h12117D09,
    32'h7B13117C,
    32'h117A1411,
    32'h16117915,
    32'h77171178,
    32'h11761811,
    32'h1A117519,
    32'h00000074,
    32'h00000018,
    32'h0000006C,
    32'hFFFFFBF4,
    32'h0000009C,
    32'h100E4400,
    32'h7E081148,
    32'h7F01114C,
    32'h00000010,
    32'h00000088,
    32'hFFFFFC74,
    32'h00000044,
    32'h00000000,
    32'h00000010,
    32'h0000009C,
    32'hFFFFFCA4,
    32'h00000018,
    32'h00000000,
    32'h00000010,
    32'h000000B0,
    32'hFFFFFCA8,
    32'h00000038,
    32'h100E5000,
    32'h00000010,
    32'h000000C4,
    32'hFFFFFCCC,
    32'h00000030};*/

reg [31:0] mem [0:1023];
localparam INIT_FILE = "boot_code.dat";


integer ram_index;
initial begin
        for (ram_index = 0; ram_index < 1024; ram_index = ram_index + 1)
          mem[ram_index] = {32'd0};
        $readmemh(INIT_FILE, mem);
end



  logic [9:0] A_Q;

  always_ff @(posedge CLK, negedge RSTN)
  begin
    if (~RSTN)
      A_Q <= '0;
    else
      if (~CSN)
        A_Q <= A;
  end

  assign Q = mem[A_Q];

endmodule