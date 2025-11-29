/*
 ==============================================================================
 Filename  : cpu_top.sv
 Project   : risc-v-cpu
 Author    : Tévchhorpoan Khieu
 Created   : 2025-11-16

 Description:
    - Top-level CPU module definition.

 Notes:
    - WIP
 ==============================================================================
*/

module cpu_top (
    input logic clk,
    input logic rst_n
);

cpu_regfile u_regfile (
    .clk(clk),
    .rst_n(rst_n)
);

cpu_instruction_fields u_instruction_fields (
    .i_instruction(instruction),
    .o_opcode(opcode),
    .o_funct3(funct3),
    .o_funct7(funct7),
    .o_rs1(rs1),
    .o_rs2(rs2),
    .o_rd(rd)
)

cpu_control_unit u_control_unit (

)

endmodule