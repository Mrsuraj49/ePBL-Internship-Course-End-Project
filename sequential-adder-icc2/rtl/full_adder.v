
`timescale 1ns / 1ps 
module full_adder (A,B,C_in,Clock,SUM,C_out);
    input  [3:0] A, B;
    input  Clock, C_in;
    output reg [3:0]SUM;
    output reg C_out;
    // Internal Registers
    reg[3:0] regA, regB, sum_temp;
    reg c_in_reg, c_out_temp;

    // Capture Inputs on Rising Edge
    always@(posedge Clock) 
    begin
        regA     <= A;
        regB     <= B;
        c_in_reg <= C_in;
     end

    // Combinational Sum Calculation
    always@(*) 
    begin
        {c_out_temp, sum_temp} = regA + regB + c_in_reg;
    end

    // Output Assignment on Clock Edge
    always@(posedge Clock) begin
        SUM   <= sum_temp;
        C_out <= c_out_temp;
    end

endmodule
