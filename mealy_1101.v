module mealy_1101(clk,reset,x,y);
input clk,reset,x;
output reg  y;

parameter s0=2'b00;
parameter s1=2'b01;
parameter s2=2'b10;
parameter s3=2'b11;
	
reg [1:0] ps,ns;

always@(posedge clk or posedge reset) begin
	
	if(reset)
		ps<=s0;
	else
		ps<=ns;
		
end


always@(*) begin

case(ps)

s0:
begin
ns=x?s1:s0;
y=1'b0;
end

s1:
begin
ns=x?s2:s0;
y=1'b0;
end

s2:
begin
ns=x?s2:s3;
y=1'b0;
end

s3:
begin
ns=x?s1:s0;
y=x?1'b1:1'b0;
end
	
default:y=1'b0;

endcase

end

endmodule


