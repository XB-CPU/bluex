`define ISC_BIT			32
`define GPR_BIT			32
`define GPR_NUM			32
`define GPR_ADR			5				// bits needed for searching all general purpose registers
`define GPR_ATM			5				// bits needed for searching all bits in one general purpose registers
`define ADR_BIT			16				// address bit num
`define IMM_BIT			16				// immediate bit num
`define OPC_BIT			6				// operation code bit num
`define ERR_BIT			2
`define SFT_BIT			5				// shift num bit

`define RSF_RSF			2'b00			// rs_forward, select rs
`define RSF_WBD			2'b01			// rs_forward, select write back data
`define RSF_ALU			2'b10			// rs_forward, select alu result

`define RTF_RTF			2'b00			// rt_forward, select rt
`define RTF_WBD			2'b01			// rt_forward, select write back data
`define RTF_ALU			2'b10			// rt_forward, select alu result

`define ASR_RTF			1'b0			// alu source, select rt forward
`define ASR_IMM			1'b1			// alu source, select immediate

`define ADR_FRT			1'b0			// address flag, select rt
`define ADR_FRD			1'b1			// address flag, select rd

/** alu operation code **/
// nothing
`define ALO_NOP			6'd25			// do nothing, a bubble
/* arithmetic */
`define ALO_ADD			6'd19			// R[rd]=R[rs]+R[rt]
`define ALO_SUB			6'd18			// R[rd]=R[rs]-R[rt]
`define ALO_ADDI		6'd26			// R[rt]=R[rs]+Imm
`define ALO_SUBI		6'd27			// R[rt]=R[rs]-Imm
`define ALO_MUL			6'd17			// don't implement
`define ALO_DVM			6'd16			// don't implement
`define ALO_MAC			6'd15			// don't implement
/* logic */
`define ALO_NOT			6'd14			// R[rd]=~R[rs]
`define ALO_ORL			6'd13			// R[rd]=R[rs]|R[rt]
`define ALO_AND			6'd12			// R[rd]=R[rs]&R[rt]
`define ALO_XOR			6'd11			// R[rd]=R[rs]^R[rt]
//? must I implement these below? them can be replaced by two instruction
// consider don't implement
`define ALO_NOTI		6'd10			// R[rt]=~Imm
`define ALO_ORLI		6'd9			// R[rt]=R[rs]|Imm
`define ALO_ANDI		6'd8			// R[rt]=R[rs]&Imm
`define ALO_XORI		6'd7			// R[rt]=R[rs]^Imm
/* shift */
// shift left logic
`define ALO_SLL			6'd6			// R[rd]=R[rs]<<R[rt]
`define ALO_SRL			6'd5			// R[rd]=R[rs]>>R[rt]
`define ALO_SRA			6'd4			// R[rd]=R[rs]>>>R[rt]
/* branch */
// jump if equal
`define ALO_BEQ			6'd3			// if(R[rs]==R[rt]) PC=PC+1+Imm
// jump if not equal
`define ALO_BNE			6'd2			// if(R[rs]!=R[rt]) PC=PC+1+Imm
`define ALO_JMP			6'd31			// PC=PC+1+Imm
/* compare */
// set if little signed
`define ALO_SLS			6'd1			// R[rd]=(R[rs]<R[rt]) ? 1 : 0
`define ALO_SLSI		6'd0			// R[rt]=(R[rs]<Imm) ? 1 : 0
/* load/save */
`define ALO_LDW			6'd20			// R[rt]=M[R[rs]+Imm]
`define ALO_SVW			6'd21			// M[R[rs]+Imm]=R[rt]
/* move */
// move from reg to reg
// `define ALO_MVRR		6'd22			// R[rt]=R[rs]
// move imm to reg low 16 bits, without sign extension
`define ALO_MIRL		6'd23			// R[rt]=Imm&0x0000ffff
// move imm to reg high 16 bits
`define ALO_MIRH		6'd30			// R[rt]=Imm<<16

/** error code **/
`define ERR_NOE			`ERR_BIT'b00	// no error
`define ERR_SNS			`ERR_BIT'b01	// shift number surpass range