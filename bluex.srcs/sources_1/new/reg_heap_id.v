`timescale 1ns / 1ps
`include ".//global_macro.v"

module reg_heap_id (
	input									clk,
	input									rst_n,
	input			[`GPR_ADR - 1 : 0] 		addr_rs,
	input			[`GPR_ADR - 1 : 0] 		addr_rt,
	input			[`GPR_ADR - 1 : 0]		addr_wr,
	input			[`GPR_BIT - 1 : 0]		wd,
	input									we,

	output			[`GPR_BIT - 1 : 0]		rs,
	output			[`GPR_BIT - 1 : 0]		rt
);
	reg [`GPR_BIT - 1 : 0] ram_reg [`GPR_NUM - 1 : 0];
	
	integer i;
	always @(negedge clk or negedge rst_n) begin
		if (!rst_n) begin
			for (i = 0; i < `GPR_NUM; i = i + 1) begin
				ram_reg[i] <= {`GPR_BIT{1'b0}};
			end
		end
		else begin
			if (we) begin
				if (addr_wr != 0) begin
					ram_reg[addr_wr] <= wd;
				end
			end
		end
	end

	assign rs = ram_reg[addr_rs];
	assign rt = ram_reg[addr_rt];
endmodule