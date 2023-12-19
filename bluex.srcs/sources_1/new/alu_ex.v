`timescale 1ns / 1ps
`include ".//global_macro.v"

module alu_ex (
	input									clk,
	input									rst_n,
	input			[`GPR_BIT - 1 : 0] 		rs_inw,
	input			[`GPR_BIT - 1 : 0] 		rt_inw,
	input	signed	[`GPR_BIT - 1 : 0]		imm_inw,
	input			[`GPR_BIT - 1 : 0] 		write_back_data,
	input			[`GPR_BIT - 1 : 0] 		alu_result_back,

	input			[`OPC_BIT - 1 : 0]		alu_op_inw,
	input			[1 : 0]					rs_forward_inw,
	input			[1 : 0]					rt_forward_inw,
	input 									alu_src_inw,
	input									memory_write_inw,
	input									memory_to_reg_inw,
	input									reg_write_inw,

	input			[`ADR_BIT - 1 : 0]		pc_next_inw,
	input			[`GPR_ADR - 1 : 0]		write_reg_addr_in_inw,
	input									branch_isc_flag_inw,
	// input			[`SFT_BIT - 1 : 0]		shift_num_inw,

	output	reg		[`GPR_BIT - 1 : 0]		rd_value,
	// output	reg		[`GPR_BIT - 1 : 0]		rc_value,
	output			[`GPR_BIT - 1 : 0]		write_data,
	output									branch_jump_flag,
	output			[`ADR_BIT - 1 : 0]		branch_addr,
	output	reg		[`GPR_ADR - 1 : 0]		write_reg_addr_out,
	output	reg 							memory_write,
	output	reg								memory_to_reg,
	output	reg								reg_write//,

	// output	reg		[`ERR_BIT - 1 : 0]		error_type,
	// output	reg		[`ERR_BIT - 1 : 0]		carry
);
	reg  			[`GPR_BIT - 1 : 0] 		alu_src_s;
	reg  			[`GPR_BIT - 1 : 0] 		alu_src_t_tmp;
	reg  			[`GPR_BIT - 1 : 0] 		alu_src_t;

	reg										alu_branch_result;
	
	reg 			[`GPR_BIT - 1 : 0]		rs;
	reg 			[`GPR_BIT - 1 : 0]		rt;
	reg 			[`GPR_BIT - 1 : 0]		imm;
	reg 			[`OPC_BIT - 1 : 0]		alu_op;
	reg 			[1 : 0]					rs_forward;
	reg 			[1 : 0]					rt_forward;
	reg 									alu_src;
	// reg 									memory_write;
	// reg 									memory_to_reg;
	// reg 									reg_write;
	reg 			[`ADR_BIT - 1 : 0]		pc_next;
	reg 			[`GPR_ADR - 1 : 0]		write_reg_addr_in;
	reg 									branch_isc_flag;
	// reg				[`SFT_BIT - 1 : 0]		shift_num;
	
	assign branch_addr = imm + pc_next;
	assign write_data = alu_src_t_tmp;
	assign branch_jump_flag = branch_isc_flag & alu_branch_result;

	always @(*) begin
		case (rs_forward)
			`RSF_RSF: alu_src_s = rs;
			`RSF_WBD: alu_src_s = write_back_data;
			`RSF_ALU: alu_src_s = alu_result_back;
			default: alu_src_s = {(`GPR_BIT){1'b0}};
		endcase
	end

	always @(*) begin
		case (rt_forward)
			`RTF_RTF: alu_src_t_tmp = rt;
			`RTF_WBD: alu_src_t_tmp = write_back_data;
			`RTF_ALU: alu_src_t_tmp = alu_result_back;
			default: alu_src_t_tmp = {(`GPR_BIT){1'b0}};
		endcase
	end

	always @(*) begin
		case (alu_src)
			`ASR_RTF: alu_src_t = alu_src_t_tmp;
			`ASR_IMM: alu_src_t = imm;
			default: alu_src_t = {(`GPR_BIT){1'b0}};
		endcase
	end

	always @(posedge clk or negedge rst_n) begin
		if (!rst_n) begin
			write_reg_addr_out <= {(`GPR_ADR){1'b0}};
		end
		else begin
			write_reg_addr_out <= write_reg_addr_in;
		end
	end

	always @(posedge clk or negedge rst_n) begin
		if (!rst_n) begin
			rs <= 0;
			rt <= 0;
			imm <= 0;
			alu_op <= 0;
			rs_forward <= 0;
			rt_forward <= 0;
			alu_src <= 0;
			memory_write <= 0;
			memory_to_reg <= 0;
			reg_write <= 0;
			pc_next <= 0;
			write_reg_addr_in <= 0;
			branch_isc_flag <= 0;
			// shift_num <= 0;
		end
		else begin
			rs <= rs_inw;
			rt <= rt_inw;
			imm <= imm_inw;
			alu_op <= alu_op_inw;
			rs_forward <= rs_forward_inw;
			rt_forward <= rt_forward_inw;
			alu_src <= alu_src_inw;
			memory_write <= memory_write_inw;
			memory_to_reg <= memory_to_reg_inw;
			reg_write <= reg_write_inw;
			pc_next <= pc_next_inw;
			write_reg_addr_in <= write_reg_addr_in_inw;
			branch_isc_flag <= branch_isc_flag_inw;
			// shift_num <= shift_num_inw;
		end
	end

	wire [`GPR_BIT : 0] rd_add = {alu_src_s + alu_src_t};
	wire [`GPR_BIT : 0] rd_sub = {alu_src_s - alu_src_t};

	always @(*) begin
		// error_type = `ERR_NOE;
		case (alu_op)
			// `ALO_NOP:	begin
			// 	rd_value = 0; alu_branch_result = 1'b0;
			// end
			/* arithmetic */
			`ALO_ADD:	begin
				rd_value = rd_add; alu_branch_result = 1'b0;// {carry, rd_value} = rd_add; alu_branch_result = 1'b0;
			end
			`ALO_SUB:	begin
				rd_value = rd_sub; alu_branch_result = 1'b0;// {carry, rd_value} = rd_sub; alu_branch_result = 1'b0;
			end
			`ALO_ADDI:	begin
				rd_value = rd_add; alu_branch_result = 1'b0;// {carry, rd_value} = rd_add; alu_branch_result = 1'b0;
			end
			`ALO_SUBI:	begin
				rd_value = rd_sub; alu_branch_result = 1'b0;// {carry, rd_value} = rd_sub; alu_branch_result = 1'b0;
			end
			/* logic */
			`ALO_NOT:	begin
				rd_value = ~alu_src_s; alu_branch_result = 1'b0;
			end
			`ALO_ORL:	begin
				rd_value = alu_src_s | alu_src_t; alu_branch_result = 1'b0;
			end
			`ALO_AND:	begin
				rd_value = alu_src_s & alu_src_t; alu_branch_result = 1'b0;
			end
			`ALO_XOR:	begin
				rd_value = alu_src_s ^ alu_src_t; alu_branch_result = 1'b0;
			end
			`ALO_NOTI:	begin
				rd_value = ~alu_src_t; alu_branch_result = 1'b0;
			end
			`ALO_ORLI:	begin
				rd_value = alu_src_s | alu_src_t; alu_branch_result = 1'b0;
			end
			`ALO_ANDI:	begin
				rd_value = alu_src_s & alu_src_t; alu_branch_result = 1'b0;
			end
			`ALO_XORI:	begin
				rd_value = alu_src_s ^ alu_src_t; alu_branch_result = 1'b0;
			end
			/* shift */
			`ALO_SLL:	begin
				rd_value = alu_src_t << alu_src_t; alu_branch_result = 1'b0;
			end
			`ALO_SRL:	begin
				rd_value = alu_src_t >> alu_src_t; alu_branch_result = 1'b0;
			end
			`ALO_SRA:	begin
				rd_value = alu_src_t >>> alu_src_t; alu_branch_result = 1'b0;
			end
			/* branch */
			`ALO_BEQ:	begin
				alu_branch_result = (alu_src_s == alu_src_t) ? 1'b1 : 1'b0; rd_value = 1'b0;
			end
			`ALO_BNE:	begin
				alu_branch_result = (alu_src_s != alu_src_t) ? 1'b1 : 1'b0; rd_value = 1'b0;
			end
			`ALO_JMP:	begin
				alu_branch_result = 1'b1; rd_value = 1'b0;
			end
			/* compare */
			`ALO_SLS:	begin
				rd_value = (alu_src_s < alu_src_t) ? 1'b1 : 1'b0; alu_branch_result = 1'b0;
			end
			`ALO_SLSI:	begin
				rd_value = (alu_src_s < alu_src_t) ? 1'b1 : 1'b0; alu_branch_result = 1'b0; // here, imm is alu_src_t 
			end
			/* load/save */
			`ALO_LDW:	begin
				rd_value = alu_src_s + alu_src_t; alu_branch_result = 1'b0;
			end
			`ALO_SVW:	begin
				rd_value = alu_src_s + alu_src_t; alu_branch_result = 1'b0;
			end
			/* move */
			// `ALO_MVRR:	begin
			// 	rd_value = alu_src_s; alu_branch_result = 1'b0;
			// end
			`ALO_MIRL:	begin
				rd_value = alu_src_t & 32'h0000FFFF; alu_branch_result = 1'b0;
			end
			`ALO_MIRH:	begin
				rd_value = alu_src_t << (`GPR_BIT - `IMM_BIT); alu_branch_result = 1'b0;
			end
			default: begin
				rd_value = {(`GPR_BIT){1'b0}};
				alu_branch_result = 1'b0;
			end
		endcase
	end
endmodule