

//`timescale 1ns/1ps


module uart_led (

  input            clk_pin_p,      // Clock input (from pin)

  input            rst_pin,        // Active LOW reset (from pin-button)
  input            [7:0] ADC_in,

          

  output wire    [7:0] led_pins_out,
output wire    [7:0] count_out,
output wire 	[7:0 ]count_ch_test
 // (* dont_touch *) output  wire    [7:0] data_out_ADC,       
 // (* dont_touch *) output  wire    [31:0] block_data_out
  
);
//  wire             clk_examp_sour_synh_i;
//  wire             clk_examp_out;
//  wire             clk_examp_out_pll;
//  wire             rst_i;
//  wire             clk_i;
//  wire             clk_rx;
//  wire             rst_int_low;
//  wire             clk_in;
//  wire             clk_pll_1;
//  wire             clk_pll_2;
//  wire             locked;
//  wire             count_my;
//  wire             rst_int_async;
//  wire 				flag_debug;
//  wire					shift_out;
//  wire 				rst_int_sync;
//  wire 			   rst3_low;
//  wire              [7:0] reg_shift_odn;
//  (* dont_touch *) wire locked_exmp;
//  reg [7:0] _system_synch_pins_out;
//  (* mark_debug = "true" *) (* dont_touch *) wire [7:0] system_synch_pins_out;
	wire              [35:0] CONTROL0;
	reg          [7:0] led_pins;
//  //(* dont_touch *) wire [7:0] data_out_ADC;
//
//  
// 
assign led_pins_out  = led_pins;//D20-hight
//assign led_pins[4] = shift_out;//D24 C2
//assign led_pins[2] = ~clk_pll_2;//D22
//
//assign led_pins[1] = ~locked;//D21
//assign led_pins[3] = flag_debug;//D23
//assign system_synch_pins_out = _system_synch_pins_out;
//assign reg_shift_odn_out = reg_shift_odn;
//assign clk_ADC = clk_pll_1;
//assign data_out_ADC = _data_out_ADC;
//
//
////  IBUFGDS IBUFG_clk_i0   ( .I  (clk_pin_p),   
////                           .IB (clk_pin_n),
////                           .O  (clk_i)
////                         );
////  BUFG    BUFG_clk_rx_i0 (.I (clk_i), .O (clk_in));
//
//  BUFG    BUFG_clk_rx_i0 (.I (clk_pin_p), .O (clk_in));
//
//  
//                         
//  IBUF IBUF_clk_exmp   ( .I  (clk_examp_sour_synh),                            
//                           .O  (clk_examp_sour_synh_i)
//                         );                       
//  BUFG    BUFG_clk_exmp (.I (clk_examp_sour_synh_i), .O (clk_examp_out));
//
//   
//  IBUF    IBUF_rst_i0    (.I (rst_pin),   .O (rst_i));
//
//
 always @(posedge clk_pin_p)
 begin
    if (rst_pin)
        begin
            led_pins <= 8'h0;
        end       
    else 
        begin
            led_pins <= ADC_in;
        end                         
 end
 
 count_test count_test_i0 (
  .clk		(clk_pin_p), 
  .q			(count_out[7:0])
);

 count_test count_test_i1 (
  .clk		(clk_pin_p), 
  .q			(count_ch_test[7:0])
);

//icon_test icon_test_i0 (
//    .CONTROL0	(CONTROL0[35:0]) // INOUT BUS [35:0]
//);
//
//test_4 test_4_i0 (
//    .CONTROL	(CONTROL0[35:0]), // INOUT BUS [35:0]
//    .CLK			(clk_pin_p), // IN
//    .TRIG0		(count_out[7:0]) // IN BUS [0:0]
//);
///////////////////////////////////////////////////////////////////////////////////Test_IP_INTEGRATOR
//  My_Block_Design My_Block_Design_i0
//       (
//        .block_data_out (block_data_out [31:0]),
//        .clk(clk_pll_1),
//        .ena(1'h1)
//        );
//////////////////////////////////////////////////////////////////////////////////Clock Damane  Generate
//    clk_core clk_core_i0
//   (
//    // Clock out ports
//    .clk_out1(clk_pll_1),     // output clk_out1 100MHz
//    .clk_out2(clk_pll_2),     // output clk_out2 10MHz
//    .locked(locked),       // output locked
//   // Clock in ports
//    .clk_in1 (clk_in)    
//        );  
//  
//      clk_core_exmp clk_core_exmp_i0
//   (
//    // Clock out ports
//    .clk_out1(clk_examp_out_pll),     // output clk_out1 10MHz
//    .locked(locked_exmp),
//   // Clock in ports
//    .clk_in1 (clk_examp_out)    
//        );   
//        
//        
///////////////////////////////////////////////////////////////////////////////////Clock Damane  clk_pll_2 = 10MHz
//  //Synchronous RESET    
//  meta_harden meta_harden_rst_i0 (
//    .clk_dst      (clk_pll_2),
//    .rst_dst      (1'b0),    // No reset on the hardener for reset!
//    .signal_src   (rst_i),
//    .signal_dst   (rst_int_low)
//  );
//  count_my count_my_i0 (
//    .clk       (clk_pll_2),
//    .rst       (rst_int_low),
//    .count      (count_my)
//  );
// 
//    Shift_reg Shift_reg_i0 (
//    .clk       (clk_pll_2),
//    .rst       (rst_int_sync),
//    .shift_out (shift_out),
//  //Sourse Synchronous like DAC (example for DAC tsu/th=5ns, latch clk for DAC=clk_pll_2, data=reg_shift_odn [7:0])    
//    .reg_shift_odn (reg_shift_odn [7:0])     
//  );
//      //DEBUG
////  `ifdef ENA_test_ILA_1 
// 
////test_ILA_2 test_ILA_2_i0 (
////	.clk(clk_pll_2), 
////    .probe0(shift_out) 
////);
//// `endif
//
///////////////////////////////////////////////////////////////////////////////////////Clock Damane clk_examp_out = 10MHz
//  //Synchronous RESET    
//  meta_harden_rst3 meta_harden_rst3_i0 (
//    .clk_dst      (clk_examp_out_pll),
//    .rst_dst      (1'b0),    // No reset on the hardener for reset!
//    .signal_src   (rst_i),
//    .signal_dst   (rst3_low)
//  );
//
////System Synchronous like DAC (example for DAC tsu/th=5ns, latch clk for DAC=clk_DAC_virtual, data=data_for_DAC [7:0])    
//     data_for_DAC data_for_DAC_i0 (
//    .clk          (clk_examp_out_pll),
//    .rst          (rst3_low),    
//    .data_for_DAC (data_for_DAC [7:0])
//  );
//  
////////////////////////////////////////////////////////////////////////////////////////Clock Damane clk_pll_1 = 100MHz
////Sourse Synchronous Input like ADC (example for ADC9215  ADCtcomin=2.5ns, ADCtcomin=6.5ns, latch clk for ADC_in: clk_pll_1, launch clk for ADC: clk_ADC = clk_pll_1)
//  //Asynchronous RESET    
//  async_reset async_reset_i0  (
//    .clk_dst      (clk_pll_1),
//    .rst_dst      (rst_i),    // No reset on the hardener for reset!
//    .signal_dst   (rst_int_sync)
//  );
//
//  count_debug count_debug_i0 (
//    .clk       (clk_pll_1),
//    .rst       (rst_int_sync),
//    .flag_debug (flag_debug)
//
//  );
//
// always @(posedge clk_pll_1)
// begin
//    if (rst_int_sync)
//        begin
//            _system_synch_pins_out <= 8'h0;
//        end       
//    else 
//        begin
//            _system_synch_pins_out <= ADC_in;
//        end                         
// end
//
////////////////////////////////////////////////////////////////////////////////////////Clock Damane clk_in = 125MHz
////System Synchronous Input (внеш. генератор тактирует ADC и FPGA)like ADC (example for ADC9215  ADCtcomin=2.5ns, ADCtcomin=6.5ns, latch clk for ADC_in: clk_in, launch clk for ADC: virtual_clk_ADC)
//  meta_harden meta_harden_rst_i1 (
//    .clk_dst      (clk_in),
//    .rst_dst      (1'b0),    // No reset on the hardener for reset!
//    .signal_src   (rst_i),
//    .signal_dst   (rst_int_adc)
//  );
//
// always @(posedge clk_in)
// begin
//    if (rst_int_adc)
//        begin
//            _data_out_ADC <= 8'h0;
//        end       
//    else 
//        begin
//            _data_out_ADC <= ADC2_in;
//        end                         
// end
//
// 
//
//
//
//    //DEBUG
//// `ifdef ENA_test_ILA_0 
// 
////test_ILA test_ILA_i0 (
////	.clk(clk_pll_1), 
////    .probe0(led_pins[0]) 
////);
//// `endif
// 
// 
//
////  OBUF OBUF_led_i0 (.I(led_o[0]), .O(led_pins[0]));
////  OBUF OBUF_led_i1 (.I(led_o[1]), .O(led_pins[1]));
////  OBUF OBUF_led_i2 (.I(led_o[2]), .O(led_pins[2]));
////  OBUF OBUF_led_i3 (.I(led_o[3]), .O(led_pins[3]));
  
endmodule
