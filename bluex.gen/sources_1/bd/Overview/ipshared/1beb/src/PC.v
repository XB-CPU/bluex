`timescale 1ns / 1ps
`include ".//global_macro.v"

module PC (
	input									clk,
	input									rst_n,
	input									ena_n,
	input			[`ADR_BIT - 1 : 0] 		next_addr_branch,
	input									branch_taken_ex,

	output	reg		[`ADR_BIT - 1 : 0] 		current_addr,
	// output			[`ADR_BIT - 1 : 0]		next_addr_in_use,
	output			[`ADR_BIT - 1 : 0] 		next_addr_output
);
	wire 			[`ADR_BIT - 1 : 0] 		next_addr_normal;
	wire			[`ADR_BIT - 1 : 0]		next_addr_in_use;
	assign next_addr_normal = next_addr_output;
	assign next_addr_in_use = (branch_taken_ex == 1) ? next_addr_branch : next_addr_normal;

	always @(posedge clk or negedge rst_n) begin
		if (!rst_n) begin
			current_addr <= {`ADR_BIT{1'b0}};
		end
		else begin
			if (~ena_n) begin
				current_addr <= next_addr_in_use;
			end
		end
	end

	assign next_addr_output = current_addr + `ADR_BIT'b1;
endmodule