// file PC.v

module PC(
	input wire clock,
	input wire reset,
	output reg[31:0] pc);
	
	initial begin
		pc = 32'h00000000;
	end
	
	always @(posedge clock) begin
		if (reset == 1'b1) begin
			pc <= 32'h00000000;
		end else begin
			pc <= pc + 4;
		end
	end
	
endmodule