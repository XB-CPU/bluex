`timescale  1ns / 1ps
`include "..//..//sources_1//new//global_macro.v"
module tb_aux_id;    

// aux_id Parameters 
parameter PERIOD  = 10;


// aux_id Inputs
reg   addr_flag                            = 0 ;
reg   [`GPR_ADR - 1 : 0]  addr_rt          = 0 ;
reg   [`GPR_ADR - 1 : 0]  addr_rd          = 0 ;
reg   [`IMM_BIT - 1 : 0]  imm              = 0 ;

// aux_id Outputs
wire  [`GPR_ADR - 1 : 0]  addr_reg         ;
wire  [`GPR_BIT - 1 : 0]  sext_imm         ;


initial begin
    
end
// initial
// begin
//     forever #(PERIOD/2)  clk=~clk;
// end

// initial
// begin
//     #(PERIOD*2) rst_n  =  1;
// end

aux_id  u_aux_id (
    .addr_flag               ( addr_flag                     ),
    .addr_rt                 ( addr_rt    [`GPR_ADR - 1 : 0] ),
    .addr_rd                 ( addr_rd    [`GPR_ADR - 1 : 0] ),
    .imm                     ( imm        [`IMM_BIT - 1 : 0] ),

    .addr_reg                ( addr_reg   [`GPR_ADR - 1 : 0] ),
    .sext_imm                ( sext_imm   [`GPR_BIT - 1 : 0] )
);

initial
begin

    $finish;
end

endmodule