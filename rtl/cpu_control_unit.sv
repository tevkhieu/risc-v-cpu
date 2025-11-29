module cpu_control_unit (
    input logic clk,
    input logic rst_n,

    input logic i_opcode,
    input logic[2:0] i_funct3;
    input logic[6:0] i_funct7;
    input logic[4:0] i_rs1;
    input logic[4:0] i_rs2;
    input logic[4:0] i_rd;

);

logic is_lui;
logic is_branch;
logic is_load;
logic is_store;
logic is_op_imm;
logic is_op;
logic is_fence;
logic is_system;

assign is_lui = i_opcode == 7'b0110111;
assign is_auipc = i_opcode == 7'b0010111;
assign is_jal = i_opcode == 7'b1101111;
assign is_jalr = i_opcode == 7'b1100111;
assign is_branch = i_opcode == 7'b1100011;
assign is_load = i_opcode == 7'b0000011;
assign is_store = i_opcode == 7'b0100011;
assign is_op_imm = i_opcode == 7'b0010011;
assign is_op = i_opcode == 7'b0110011;
assign is_fence = i_opcode == 7'b0001111;
assign is_system = i_opcode == 7'b1110011;



endmodule