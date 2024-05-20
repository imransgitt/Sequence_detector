


module mealy_1101_tb();
reg clk;
reg reset;
reg x;
wire y;

mealy_1101 dut(.clk(clk),.reset(reset),.x(x),.y(y));

initial begin
clk=1'b0;
reset=1'b1;
x=1'b1;

#10
reset=1'b0;
x=1'b1;

#10
x=1'b0;

#10
x=1'b1;

#10
x=1'b0;

#10
x=1'b1;

#10
x=1'b1;

#10
x=1'b0;

#10
x=1'b1;

#10
x=1'b0;

#100 $finish;

end

always #5 clk=~clk;


initial 
begin
$dumpfile("seq_out.vcd");
$dumpvars;
end


endmodule





