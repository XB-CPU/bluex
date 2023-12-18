//~ `New testbench
`timescale  1ns / 1ps
`include "D://MyWorks//Programs//Verilog//vivado//DSP_sim//DSP_sim.srcs//sources_1//new//global_macro.v"

module tb_reg_heap_id;

// reg_heap_id Parameters
parameter PERIOD  = 10;


// reg_heap_id Inputs
reg   clk                                  = 0 ;
reg   rst_n                                = 0 ;
reg   [`GPR_ADR - 1 : 0]  addr_rs          = 0 ;
reg   [`GPR_ADR - 1 : 0]  addr_rt          = 0 ;
reg   [`GPR_ADR - 1 : 0]  addr_wr          = 0 ;
reg   [`GPR_BIT - 1 : 0]  wd               = 0 ;
reg   we                                   = 0 ;

// reg_heap_id Outputs
wire  [`GPR_BIT - 1 : 0]  rs               ;
wire  [`GPR_BIT - 1 : 0]  rt               ;


initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*2) rst_n  =  1;
end

reg_heap_id  u_reg_heap_id (
    .clk                     ( clk                         ),
    .rst_n                   ( rst_n                       ),
    .addr_rs                 ( addr_rs  [`GPR_ADR - 1 : 0] ),
    .addr_rt                 ( addr_rt  [`GPR_ADR - 1 : 0] ),
    .addr_wr                 ( addr_wr  [`GPR_ADR - 1 : 0] ),
    .wd                      ( wd       [`GPR_BIT - 1 : 0] ),
    .we                      ( we                          ),

    .rs                      ( rs       [`GPR_BIT - 1 : 0] ),
    .rt                      ( rt       [`GPR_BIT - 1 : 0] )
);

integer i;

initial
begin
	#(PERIOD * 2) we = 0; wd = 0; addr_wr = 0; addr_rs = 0; addr_rt = 0;
	for (i = 0; i < 100; i = i + 1) begin
		#(PERIOD * 1) we = {$random} % 2; wd = {$random} % 33'h1_0000_0000; addr_wr = {$random} % 6'h20; addr_rs = {$random} % 6'h20; addr_rt = {$random} % 6'h20;
	end
	#(PERIOD * 2) 
    $stop;
end

endmodule