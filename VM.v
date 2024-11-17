// DSCH 2.7a
// 6/30/2024 6:37:15 PM
// F:\dsch02\dsch02\Export dsch2\VM.sch

module VM( Mojo,Taka,FizzUp,GetMojo,GetFizzUp,Error);
 input Mojo,Taka,FizzUp;
 output GetMojo,GetFizzUp,Error;
 and #(16) and2(w3,Taka,Mojo);
 and #(16) and2(w5,FizzUp,Taka);
 and #(16) and2(w6,Mojo,FizzUp);
 and #(30) and2(Error,w6,Taka);
 xor #(16) xor2(GetMojo,w3,Error);
 xor #(16) xor2(GetFizzUp,w5,Error);
endmodule

// Simulation parameters in Verilog Format
always
#1000 Mojo=~Mojo;
#2000 Taka=~Taka;
#4000 FizzUp=~FizzUp;

// Simulation parameters
// Mojo CLK 10 10
// Taka CLK 20 20
// FizzUp CLK 40 40
