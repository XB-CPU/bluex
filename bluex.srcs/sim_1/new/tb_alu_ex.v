`timescale  1ns / 100ps
`include "..//..//sources_1//new//global_macro.v" 

module tb_alu_ex;      

// alu_ex Parameters   
parameter PERIOD  = 10;

// alu_ex Inputs
reg   clk                                  = 0 ;
reg   rst_n                                = 0 ;
reg   [`GPR_BIT - 1 : 0]  rs_inw           = 0 ;        //rs����
reg   [`GPR_BIT - 1 : 0]  rt_inw           = 0 ;        //rt����
reg   [`GPR_BIT - 1 : 0]  imm_inw          = 0 ;        //����������    I��ָ��
reg   [`GPR_BIT - 1 : 0]  write_back_data  = 0 ;        //�ض���д������
reg   [`GPR_BIT - 1 : 0]  alu_result_back  = 0 ;        //�ض���ALU��������
reg   [`OPC_BIT - 1 : 0]  alu_op_inw       = 0 ;        //
reg   [1 : 0]  rs_forward_inw              = 0 ;        //
reg   [1 : 0]  rt_forward_inw              = 0 ;
reg   alu_src_inw                          = 0 ;
reg   memory_write_inw                     = 0 ;
reg   memory_to_reg_inw                    = 0 ;
reg   reg_write_inw                        = 0 ;
reg   [`ADR_BIT - 1 : 0]  pc_next_inw      = 0 ;
reg   [`GPR_ADR - 1 : 0]  write_reg_addr_in_inw = 0 ;
reg   branch_isc_flag_inw                  = 0 ;

// alu_ex Outputs
wire  [`GPR_BIT - 1 : 0]  rd_value         ;            //ALU���
wire  [`GPR_BIT - 1 : 0]  write_data       ;            //
wire  branch_jump_flag                     ;
wire  [`ADR_BIT - 1 : 0]  branch_addr      ;
wire  [`GPR_ADR - 1 : 0]  write_reg_addr_out ;
wire  memory_write                         ;
wire  memory_to_reg                        ;
wire  reg_write                            ;


initial
begin
    forever #(PERIOD/2)  clk=~clk;          //ʱ������10ns,100MHz
end

initial
begin
    #(PERIOD*2) rst_n  =  1;
end

alu_ex  u_alu_ex (
    .clk                     ( clk                                       ),
    .rst_n                   ( rst_n                                     ),
    .rs_inw                  ( rs_inw                 [`GPR_BIT - 1 : 0] ),
    .rt_inw                  ( rt_inw                 [`GPR_BIT - 1 : 0] ),
    .imm_inw                 ( imm_inw                [`GPR_BIT - 1 : 0] ),
    .write_back_data         ( write_back_data        [`GPR_BIT - 1 : 0] ),
    .alu_result_back         ( alu_result_back        [`GPR_BIT - 1 : 0] ),
    .alu_op_inw              ( alu_op_inw             [`OPC_BIT - 1 : 0] ),
    .rs_forward_inw          ( rs_forward_inw         [1 : 0]            ),
    .rt_forward_inw          ( rt_forward_inw         [1 : 0]            ),
    .alu_src_inw             ( alu_src_inw                               ),
    .memory_write_inw        ( memory_write_inw                          ),
    .memory_to_reg_inw       ( memory_to_reg_inw                         ),
    .reg_write_inw           ( reg_write_inw                             ),
    .pc_next_inw             ( pc_next_inw            [`ADR_BIT - 1 : 0] ),
    .write_reg_addr_in_inw   ( write_reg_addr_in_inw  [`GPR_ADR - 1 : 0] ),
    .branch_isc_flag_inw     ( branch_isc_flag_inw                       ),

    .rd_value                ( rd_value               [`GPR_BIT - 1 : 0] ),
    .write_data              ( write_data             [`GPR_BIT - 1 : 0] ),
    .branch_jump_flag        ( branch_jump_flag                          ),
    .branch_addr             ( branch_addr            [`ADR_BIT - 1 : 0] ),
    .write_reg_addr_out      ( write_reg_addr_out     [`GPR_ADR - 1 : 0] ),
    .memory_write            ( memory_write                              ),
    .memory_to_reg           ( memory_to_reg                             ),
    .reg_write               ( reg_write                                 )
);

// initial begin
//     //�������ݸ�ֵ
//     ///�Ĵ�������
//     rs_inw  =   5'd1    ;
//     rt_inw  =   5'd2    ;
//     imm_inw =   16'd520 ;
//     ///�ض�������
//     write_back_data =
//     alu_result_back =
//     //�����źŸ�ֵ

//     //
// end

initial
begin
    //R������ָ��               ALO_ADD R1 R3 R2(Rs Rt Rd)  ע:immλ����
    #15
    pc_next_inw = 16'd6000;
    rs_inw = -32'd110; rt_inw = 32'd5200; write_reg_addr_in_inw = 5'd2;
    alu_op_inw = `ALO_ADD;

    //R������ָ��+д���ض���    ALO_SUB  R2 R3 R1   //Rs��  ע:immλ����
    #35
    rs_inw = 32'd110; rt_inw = 32'd5200; write_reg_addr_in_inw = 5'd1;
    alu_op_inw = `ALO_SUB;
    ///�ض���
    rs_forward_inw = `RSF_WBD;
    write_back_data = -32'd2500;

    //R����λָ��               ALO_SLL R1 R15 R31
    #55
    rs_inw = 32'h0000_0001; rt_inw = 32'd11; write_reg_addr_in_inw = 5'd31;
    alu_op_inw = `ALO_SLL;
    rs_forward_inw = `RSF_RSF;
    write_back_data = 32'd0;

    //I������ָ��               ALO_ADDI R1 R2 imm16(Rs Rt imm16)  
    #75
    rs_inw = 32'd110; rt_inw = 32'd5200; write_reg_addr_in_inw = 5'd2;
    imm_inw = 32'd155;
    alu_src_inw = `ASR_IMM;
    alu_op_inw = `ALO_ADDI;

    //I���ָ֧��               ALO_BEQ  R5 R6 imm16
    #95
    pc_next_inw = 16'd6000;
    rs_inw = 32'd520; rt_inw = 32'd520; write_reg_addr_in_inw = 5'd6;
    imm_inw = 32'd2048;
    alu_src_inw = `ASR_IMM;
    alu_op_inw = `ALO_BEQ;

    //I���ָ֧��+ִ���ض���    ALO_BNE R5 R6 imm16 //Rt��
    #105
    pc_next_inw = 16'd6000;
    rs_inw = 32'd520; rt_inw = 32'd521; write_reg_addr_in_inw = 5'd6;
    imm_inw = 32'd1024;
    alu_src_inw = `ASR_IMM;
    alu_op_inw = `ALO_BEQ;
    ///�ض���
    rt_forward_inw = `RTF_ALU;
    alu_result_back = 32'd520;

    //I��ô�ָ��               ALO_LDW Rs R6 imm16
    #125
    pc_next_inw = 16'd6000;
    rs_inw = 32'd520; rt_inw = 32'd521; write_reg_addr_in_inw = 5'd6;
    imm_inw = 32'd512;
    alu_src_inw = `ASR_IMM;
    alu_op_inw = `ALO_LDW;
    rt_forward_inw = `RTF_RTF;

    //J���ָ֧��               ASR_IMM imm26
    #145
    pc_next_inw = 16'd6000;
    imm_inw = 32'd648;
    alu_src_inw = `ASR_IMM;
    alu_op_inw = `ALO_LDW;

    $finish;
end

endmodule