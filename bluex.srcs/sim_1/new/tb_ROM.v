`timescale  1ns / 100ps
`include "..//..//sources_1//new//global_macro.v"

//~ `New testbench
`timescale  1ns / 1ps

module tb_ROM;

// bluex_wrapper Parameters
parameter PERIOD  = 20;
parameter MEM_UNIT = 40;


// bluex_wrapper Inputs
reg   clk                                  = 0 ;
reg   [0:0]  enable_CPU                    = 0 ;
wire   [31:0]  isc                           ;
reg   [31:0]  ram_rd_data                  = 0 ;
wire   [31:0]  read_mem_out_inw              ;
reg   rst_n                                = 0 ;
reg   wr_en_i                              = 0 ;
reg   wr_en_t                              = 0 ;

// bluex_wrapper Outputs
wire  [15:0]  current_addr                 ;
wire  [31:0]  ram_addr                     ;
wire  ram_clk                              ;
wire  ram_en                               ;
wire  ram_rst                              ;
wire  [3:0]  ram_we                        ;
wire  [31:0]  ram_wr_data                  ;
wire  wr_en_o                              ;
wire  [15:0]  write_mem_addr               ;
wire  write_mem_clk                        ;
wire  [31:0]  write_mem_data               ;
wire  write_mem_en                         ;
wire  write_mem_rst                        ;
wire  write_mem_we                         ;

reg [`ISC_BIT-1:0] ROM [MEM_UNIT - 1:0];
reg [`ISC_BIT-1:0] RAM [MEM_UNIT - 1:0];
assign isc = ROM[current_addr]; 
assign read_mem_out_inw = RAM[write_mem_addr];

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
	for (i = 0; i < MEM_UNIT; i = i + 1) begin
		ROM[i] <= {`ISC_BIT'b0};
		RAM[i] <= {`ISC_BIT'b0};
	end
	#(PERIOD*1.5) $readmemb("D://MyWorks//Programs//Verilog//vivado//bluex//bluex.srcs//sources_1//new//isc_machine_code.txt", ROM);
end

bluex_wrapper  u_bluex_wrapper (
    .clk                     ( clk                      ),
    .enable_CPU              ( enable_CPU        [0:0]  ),
    .isc                     ( isc               [31:0] ),
    .ram_rd_data             ( ram_rd_data       [31:0] ),
    .read_mem_out_inw        ( read_mem_out_inw  [31:0] ),
    .rst_n                   ( rst_n                    ),
    .wr_en_i                 ( wr_en_i                  ),
    .wr_en_t                 ( wr_en_t                  ),

    .current_addr            ( current_addr      [15:0] ),
    .ram_addr                ( ram_addr          [31:0] ),
    .ram_clk                 ( ram_clk                  ),
    .ram_en                  ( ram_en                   ),
    .ram_rst                 ( ram_rst                  ),
    .ram_we                  ( ram_we            [3:0]  ),
    .ram_wr_data             ( ram_wr_data       [31:0] ),
    .wr_en_o                 ( wr_en_o                  ),
    .write_mem_addr          ( write_mem_addr    [15:0] ),
    .write_mem_clk           ( write_mem_clk            ),
    .write_mem_data          ( write_mem_data    [31:0] ),
    .write_mem_en            ( write_mem_en             ),
    .write_mem_rst           ( write_mem_rst            ),
    .write_mem_we            ( write_mem_we             )
);

initial begin
	enable_CPU = 1'b1; 
	#(PERIOD*100) enable_CPU = 1'b0;
	#(PERIOD*5) enable_CPU = 1'b1;
end

initial
begin
	// #(PERIOD*2.5) enable_CPU = 1'b1; isc = ROM[current_addr_0]; read_mem_out_inw = RAM[write_mem_addr];
	#(PERIOD*200) 
	// for (i = 0; i < 20; i = i + 1) begin
	// 	enable_CPU = 1'b1; isc = ROM[current_addr_0]; read_mem_out_inw = RAM[write_mem_addr];
	// end
    $stop;
end

endmodule