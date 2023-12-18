//~ `New testbench
`timescale  1ns / 1ps
`include "D://MyWorks//Programs//Verilog//vivado//DSP_sim//DSP_sim.srcs//sources_1//new//global_macro.v"

module tb_PC;

// PC Parameters
parameter PERIOD  = 10;


// PC Inputs
reg   clk                                  = 0 ;
reg   rst_n                                = 0 ;
reg   en                                   = 0 ;
reg   [`ADR_BIT - 1 : 0]  next_addr_branch = 0 ;
reg   branch_taken_ex                      = 0 ;

// PC Outputs
wire  [`ADR_BIT - 1 : 0]  current_addr     ;
wire  [`ADR_BIT - 1 : 0]  next_addr_in_use ;
wire  [`ADR_BIT - 1 : 0]  next_addr_output ;


initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*2) rst_n  =  1;
end

PC  u_PC (
    .clk                     ( clk                                  ),
    .rst_n                   ( rst_n                                ),
    .en                      ( en                                   ),
    .next_addr_branch        ( next_addr_branch  [`ADR_BIT - 1 : 0] ),
    .branch_taken_ex         ( branch_taken_ex                      ),

    .current_addr            ( current_addr      [`ADR_BIT - 1 : 0] ),
    .next_addr_in_use        ( next_addr_in_use  [`ADR_BIT - 1 : 0] ),
    .next_addr_output        ( next_addr_output  [`ADR_BIT - 1 : 0] )
);

integer i;
initial
begin
	#(PERIOD*2) en = 1; next_addr_branch = 0; branch_taken_ex = 0;
	for (i = 0; i < 2; i = i + 1) begin
		#(PERIOD*1) en = 1; next_addr_branch = 0; branch_taken_ex = 0;
	end
	#(PERIOD*1) en = 1; next_addr_branch = `ADR_BIT'h43a7; branch_taken_ex = 1;
	for (i = 0; i < 20; i = i + 1) begin
		#(PERIOD*1) en = 1; next_addr_branch = {$random} % 17'h1_0000; branch_taken_ex = 0;
	end
	for (i = 0; i < 50; i = i + 1) begin
		#(PERIOD*1) en = {$random} % 2; next_addr_branch = {$random} % 17'h1_0000; branch_taken_ex = {$random} % 2;
	end
	#(PERIOD*1)
    $stop;
end

endmodule