// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// *****************************************************************************
// This file contains a Verilog test bench with test vectors .The test vectors  
// are exported from a vector file in the Quartus Waveform Editor and apply to  
// the top level entity of the current Quartus project .The user can use this   
// testbench to simulate his design using a third-party simulation tool .       
// *****************************************************************************
// Generated on "10/26/2014 21:10:46"
                                                                        
// Verilog Self-Checking Test Bench (with test vectors) for design :    FullAdder4
// 
// Simulation tool : 3rd Party
// 

`timescale 1 ps/ 1 ps
module FullAdder4_vlg_sample_tst(
	A,
	B,
	sampler_tx
);
input [3:0] A;
input [3:0] B;
output sampler_tx;

reg sample;
time current_time;
always @(A or B)
                                                                                
begin                                                 
 if ($realtime > 0)                                   
 begin                                                
	if ($realtime == 0 || $realtime != current_time)  
	begin									          
		if (sample === 1'bx)                          
			sample = 0;                               
		else                                          
			sample = ~sample;                         
	end										          
	current_time = $realtime;					      
 end                                                  
end                                                   

assign sampler_tx = sample;
endmodule

module FullAdder4_vlg_check_tst (
	S,
	sampler_rx
);
input [4:0] S;
input sampler_rx;

reg [4:0] S_expected;

reg [4:0] S_prev;

reg [4:0] S_expected_prev;

reg [4:0] last_S_exp;

reg trigger;

integer i;
integer nummismatches;

reg [1:1] on_first_change ;


initial
begin
trigger = 0;
i = 0;
nummismatches = 0;
on_first_change = 1'b1;
end

// update real /o prevs

always @(trigger)
begin
	S_prev = S;
end

// update expected /o prevs

always @(trigger)
begin
	S_expected_prev = S_expected;
end


// expected S[ 4 ]
initial
begin
	S_expected[4] = 1'bX;
end 
// expected S[ 3 ]
initial
begin
	S_expected[3] = 1'bX;
end 
// expected S[ 2 ]
initial
begin
	S_expected[2] = 1'bX;
end 
// expected S[ 1 ]
initial
begin
	S_expected[1] = 1'bX;
end 
// expected S[ 0 ]
initial
begin
	S_expected[0] = 1'bX;
end 
// generate trigger
always @(S_expected or S)
begin
	trigger <= ~trigger;
end

always @(posedge sampler_rx or negedge sampler_rx)
begin
`ifdef debug_tbench
	$display("Scanning pattern %d @time = %t",i,$realtime );
	i = i + 1;
	$display("| expected S = %b | ",S_expected_prev);
	$display("| real S = %b | ",S_prev);
`endif
	if (
		( S_expected_prev[0] !== 1'bx ) && ( S_prev[0] !== S_expected_prev[0] )
		&& ((S_expected_prev[0] !== last_S_exp[0]) ||
			on_first_change[1])
	)
	begin
		$display ("ERROR! Vector Mismatch for output port S[0] :: @time = %t",  $realtime);
		$display ("     Expected value = %b", S_expected_prev);
		$display ("     Real value = %b", S_prev);
		nummismatches = nummismatches + 1;
		on_first_change[1] = 1'b0;
		last_S_exp[0] = S_expected_prev[0];
	end
	if (
		( S_expected_prev[1] !== 1'bx ) && ( S_prev[1] !== S_expected_prev[1] )
		&& ((S_expected_prev[1] !== last_S_exp[1]) ||
			on_first_change[1])
	)
	begin
		$display ("ERROR! Vector Mismatch for output port S[1] :: @time = %t",  $realtime);
		$display ("     Expected value = %b", S_expected_prev);
		$display ("     Real value = %b", S_prev);
		nummismatches = nummismatches + 1;
		on_first_change[1] = 1'b0;
		last_S_exp[1] = S_expected_prev[1];
	end
	if (
		( S_expected_prev[2] !== 1'bx ) && ( S_prev[2] !== S_expected_prev[2] )
		&& ((S_expected_prev[2] !== last_S_exp[2]) ||
			on_first_change[1])
	)
	begin
		$display ("ERROR! Vector Mismatch for output port S[2] :: @time = %t",  $realtime);
		$display ("     Expected value = %b", S_expected_prev);
		$display ("     Real value = %b", S_prev);
		nummismatches = nummismatches + 1;
		on_first_change[1] = 1'b0;
		last_S_exp[2] = S_expected_prev[2];
	end
	if (
		( S_expected_prev[3] !== 1'bx ) && ( S_prev[3] !== S_expected_prev[3] )
		&& ((S_expected_prev[3] !== last_S_exp[3]) ||
			on_first_change[1])
	)
	begin
		$display ("ERROR! Vector Mismatch for output port S[3] :: @time = %t",  $realtime);
		$display ("     Expected value = %b", S_expected_prev);
		$display ("     Real value = %b", S_prev);
		nummismatches = nummismatches + 1;
		on_first_change[1] = 1'b0;
		last_S_exp[3] = S_expected_prev[3];
	end
	if (
		( S_expected_prev[4] !== 1'bx ) && ( S_prev[4] !== S_expected_prev[4] )
		&& ((S_expected_prev[4] !== last_S_exp[4]) ||
			on_first_change[1])
	)
	begin
		$display ("ERROR! Vector Mismatch for output port S[4] :: @time = %t",  $realtime);
		$display ("     Expected value = %b", S_expected_prev);
		$display ("     Real value = %b", S_prev);
		nummismatches = nummismatches + 1;
		on_first_change[1] = 1'b0;
		last_S_exp[4] = S_expected_prev[4];
	end

	trigger <= ~trigger;
end
initial 

begin 
$timeformat(-12,3," ps",6);
#1000000;
if (nummismatches > 0)
	$display ("%d mismatched vectors : Simulation failed !",nummismatches);
else
	$display ("Simulation passed !");
$stop;
end 
endmodule

module FullAdder4_vlg_vec_tst();
// constants                                           
// general purpose registers
reg [3:0] A;
reg [3:0] B;
// wires                                               
wire [4:0] S;

wire sampler;                             

initial begin
	$dumpfile("my_wave_result.vcd");
	$dumpvars;
end

// assign statements (if any)                          
FullAdder4 i1 (
// port map - connection between master ports and signals/registers   
	.A(A),
	.B(B),
	.S(S)
);
// A[ 3 ]
initial
begin
	A[3] = 1'b0;
	A[3] = #20000 1'b1;
	A[3] = #20000 1'b0;
	A[3] = #20000 1'b1;
	A[3] = #40000 1'b0;
	A[3] = #40000 1'b1;
	A[3] = #40000 1'b0;
	A[3] = #20000 1'b1;
	A[3] = #20000 1'b0;
	A[3] = #20000 1'b1;
	A[3] = #40000 1'b0;
	A[3] = #40000 1'b1;
	A[3] = #20000 1'b0;
	A[3] = #20000 1'b1;
	A[3] = #20000 1'b0;
	A[3] = #20000 1'b1;
	A[3] = #20000 1'b0;
end 
// A[ 2 ]
initial
begin
	A[2] = 1'b0;
	A[2] = #20000 1'b1;
	A[2] = #20000 1'b0;
	A[2] = #20000 1'b1;
	A[2] = #20000 1'b0;
	A[2] = #40000 1'b1;
	A[2] = #60000 1'b0;
	A[2] = #20000 1'b1;
	A[2] = #20000 1'b0;
	A[2] = #20000 1'b1;
	A[2] = #120000 1'b0;
	A[2] = #20000 1'b1;
	A[2] = #20000 1'b0;
	A[2] = #20000 1'b1;
	A[2] = #20000 1'b0;
end 
// A[ 1 ]
initial
begin
	A[1] = 1'b0;
	A[1] = #40000 1'b1;
	A[1] = #40000 1'b0;
	A[1] = #40000 1'b1;
	A[1] = #80000 1'b0;
	A[1] = #20000 1'b1;
	A[1] = #20000 1'b0;
	A[1] = #20000 1'b1;
	A[1] = #20000 1'b0;
	A[1] = #40000 1'b1;
	A[1] = #40000 1'b0;
	A[1] = #60000 1'b1;
	A[1] = #60000 1'b0;
end 
// A[ 0 ]
initial
begin
	A[0] = 1'b0;
	A[0] = #20000 1'b1;
	A[0] = #20000 1'b0;
	A[0] = #60000 1'b1;
	A[0] = #20000 1'b0;
	A[0] = #20000 1'b1;
	A[0] = #20000 1'b0;
	A[0] = #60000 1'b1;
	A[0] = #20000 1'b0;
	A[0] = #40000 1'b1;
	A[0] = #40000 1'b0;
	A[0] = #20000 1'b1;
	A[0] = #20000 1'b0;
	A[0] = #20000 1'b1;
	A[0] = #100000 1'b0;
end 
// B[ 3 ]
initial
begin
	B[3] = 1'b1;
	B[3] = #20000 1'b0;
	B[3] = #40000 1'b1;
	B[3] = #40000 1'b0;
	B[3] = #60000 1'b1;
	B[3] = #20000 1'b0;
	B[3] = #40000 1'b1;
	B[3] = #80000 1'b0;
	B[3] = #20000 1'b1;
	B[3] = #40000 1'b0;
	B[3] = #20000 1'b1;
	B[3] = #40000 1'b0;
	B[3] = #20000 1'b1;
	B[3] = #40000 1'b0;
end 
// B[ 2 ]
initial
begin
	B[2] = 1'b0;
	B[2] = #20000 1'b1;
	B[2] = #20000 1'b0;
	B[2] = #20000 1'b1;
	B[2] = #40000 1'b0;
	B[2] = #20000 1'b1;
	B[2] = #60000 1'b0;
	B[2] = #60000 1'b1;
	B[2] = #40000 1'b0;
	B[2] = #40000 1'b1;
	B[2] = #20000 1'b0;
end 
// B[ 1 ]
initial
begin
	B[1] = 1'b0;
	B[1] = #20000 1'b1;
	B[1] = #40000 1'b0;
	B[1] = #40000 1'b1;
	B[1] = #40000 1'b0;
	B[1] = #40000 1'b1;
	B[1] = #100000 1'b0;
	B[1] = #40000 1'b1;
	B[1] = #80000 1'b0;
	B[1] = #40000 1'b1;
	B[1] = #40000 1'b0;
end 
// B[ 0 ]
initial
begin
	B[0] = 1'b1;
	B[0] = #60000 1'b0;
	B[0] = #40000 1'b1;
	B[0] = #20000 1'b0;
	B[0] = #40000 1'b1;
	B[0] = #20000 1'b0;
	B[0] = #20000 1'b1;
	B[0] = #20000 1'b0;
	B[0] = #60000 1'b1;
	B[0] = #40000 1'b0;
	B[0] = #20000 1'b1;
	B[0] = #40000 1'b0;
	B[0] = #20000 1'b1;
	B[0] = #40000 1'b0;
	B[0] = #20000 1'b1;
	B[0] = #20000 1'b0;
end 

FullAdder4_vlg_sample_tst tb_sample (
	.A(A),
	.B(B),
	.sampler_tx(sampler)
);

FullAdder4_vlg_check_tst tb_out(
	.S(S),
	.sampler_rx(sampler)
);
endmodule

