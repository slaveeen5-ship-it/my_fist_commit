`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:59:30 12/20/2025
// Design Name:   test_top
// Module Name:   /home/slaven/my_Work/test/test_beanch_test_top.v
// Project Name:  test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: test_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_beanch_test_top ();
	parameter PERIOD = 10;
	// Inputs
	wire clk_pin_p;
	wire rst_pin;
	wire [7:0] ADC_in;

	// Outputs
	wire [7:0] led_pins_out;
	wire [7:0] count_out;
	wire [7:0] count_ch_test;
	
	reg    clk = 1'h1;
	reg    reset;
	reg 	[7:0] ADC_test;

	// Instantiate the Unit Under Test (UUT)
	test_top uut (
		.clk_pin_p(clk), 
		.rst_pin(reset), 
		.ADC_in(ADC_test), 
		.led_pins_out(led_pins_out), 
		.count_out(count_out), 
		.count_ch_test(count_ch_test)
	);
	
initial
begin
    #0 $display("%t       Starting simulation",$realtime);     
    #0 reset = 0;
	 #0 ADC_test  = 0;
    #2500 reset = 1;
    #200 reset = 0;
    repeat (10000) @(posedge clk);
    $stop;
    $finish;

end


	

   initial begin
      clk = 1'b0;
      #(PERIOD/2);
      forever
         #(PERIOD/2) clk = ~clk;
   
    end
	 
	  always @(posedge clk)
 begin
    if (reset)
        begin
            ADC_test <= 8'h0;
        end       
    else 
        begin
            ADC_test <= ADC_test + 1'h1;
        end                         
 end
	 
      
endmodule

