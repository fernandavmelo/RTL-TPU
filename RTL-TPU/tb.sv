/* TESTBENCH
Geraçao de estimulos para o modulo TPU
*/
`timescale 1us/100ns

module tb;

logic sys_clock;
logic reset;
logic valid;
logic [7:0]addr;
logic [7:0]data_in;
logic [7:0]data_out;
logic g_clk_tx;
logic g_clk_rx;
logic [7:0]tpuint_byte0;
logic [7:0]tpuint_byte1;
logic [15:0]counter;
logic [7:0]tpu_control; //bit 7 a 5: n usado, bit 4: intflag, bit 3: timerintmsk, bit 2: rxslot_en, bit 1: txslot_en, bit 0: rsttpu
logic tpu_int;
logic [7:0]tx_slot;
logic [7:0]rx_slot;
logic intflag;



register_file r1 (
.sys_clock(sys_clock), 
.reset(reset), 
.data_in(data_in), 
.we(valid), 
.addr(addr), 
.data_out(data_out), 
.tpu_control(tpu_control), 
.tpuint_byte0(tpuint_byte0), 
.tpuint_byte1(tpuint_byte1), 
.tx_slot(tx_slot), 
.rx_slot(rx_slot), 
.rsttpu(rsttpu),
.intflag(intflag) 
);


timer t1 (
.sys_clock(sys_clock), 
.reset(reset), 
.rsttpu(rsttpu), 
.tpu_control(tpu_control), 
.tpuint_byte0(tpuint_byte0), 
.tpuint_byte1(tpuint_byte1), 
.tpu_int(tpu_int), 
.counter(counter),
.intflag(intflag)
);


gerador_clock g1 (
.sys_clock(sys_clock), 
.reset(reset), 
.tpu_control(tpu_control), 
.tx_slot(tx_slot), 
.rx_slot(rx_slot), 
.g_clk_tx(g_clk_tx), 
.g_clk_rx(g_clk_rx), 
.counter(counter)
);

//Gerador de clock
initial
	sys_clock = 0;
	
always 
begin
	#15625ns;
	sys_clock = ~sys_clock;
end 

//Gerador de Reset
initial
begin
	reset = 1;
	#31250ns
	reset = 0;
end

//Geraçao de valores de data_in e addr
initial
begin
	#46875ns
		valid = 1'd1;
		addr = 8'h21;
		data_in = 8'd5;
	#31250ns
		valid = 1'd1;
		addr = 8'h22;
		data_in = 8'd6;
	#31250ns
		valid = 1'd1;
		addr = 8'h23;
		data_in = 8'b00000000;
	#31250ns
		valid = 1'd1;
		addr = 8'h24;
		data_in = 8'b00000100;
	#31250ns
		valid = 1'd1;
		addr = 8'h20;
		data_in = 8'b00001111;
	#31250ns
	#31250ns
		valid = 1'd1;
		addr = 8'h24;
		data_in = 8'b00001000;
	#31250ns
		valid = 1'd1;
		addr = 8'h20;
		data_in = 8'b00001110;
	#31250ns
		valid = 1'd1;
		addr = 8'h20;
		data_in = 8'b00011110;
	#31250ns
		valid = 1'd0;
		addr = 8'h21;
		data_in = 8'd15;
end


endmodule 