`timescale  1ns / 1ps
`include "..//..//sources_1//new//global_macro.v"

//~ `New testbench
`timescale  1ns / 1ps

module tb_ROM;

// bluex_wrapper Parameters
parameter PERIOD  = 10;


// bluex_wrapper Inputs
reg   clk                                  = 0 ;
reg   [0:0]  enable_CPU                    = 0 ;
reg   [31:0]  isc                          = 0 ;
reg   [31:0]  read_mem_out_inw             = 0 ;
reg   rst_n                                = 0 ;

// bluex_wrapper Outputs
wire  [15:0]  current_addr_0               ;
wire  [15:0]  write_mem_addr               ;
wire  write_mem_clk                        ;
wire  [31:0]  write_mem_data               ;
wire  write_mem_en                         ;

reg [`ISC_BIT-1:0] ROM [32 - 1:0];
reg [`ISC_BIT-1:0] RAM [32 - 1:0];

initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*2) rst_n  =  1;
end

integer i;
initial begin
	for (i = 0; i < (1 << `ADR_BIT); i = i + 1) begin
		ROM[i] <= {`ISC_BIT'b0};
		RAM[i] <= {`ISC_BIT'b0};
	end
	#(PERIOD*2) $readmemb("D://MyWorks//Programs//Verilog//vivado//bluex//bluex.srcs//sources_1//new//isc_machine_code.txt", ROM);
end

bluex_wrapper  u_bluex_wrapper (
    .clk                     ( clk                      ),
    .enable_CPU              ( enable_CPU        [0:0]  ),
    .isc                     ( isc               [31:0] ),
    .read_mem_out_inw        ( read_mem_out_inw  [31:0] ),
    .rst_n                   ( rst_n                    ),

    .current_addr_0          ( current_addr_0    [15:0] ),
    .write_mem_addr          ( write_mem_addr    [15:0] ),
    .write_mem_clk           ( write_mem_clk            ),
    .write_mem_data          ( write_mem_data    [31:0] ),
    .write_mem_en            ( write_mem_en             )
);

initial
begin
	#(PERIOD*2.5) enable_CPU = 1'b1; isc = ROM[current_addr_0]; read_mem_out_inw = RAM[write_mem_addr];
	for (i = 0; i < 20; i = i + 1) begin
		#(PERIOD*1)  enable_CPU = 1'b1; isc = ROM[current_addr_0]; read_mem_out_inw = RAM[write_mem_addr];
	end
    $stop;
end

endmodule