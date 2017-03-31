/*GERADOR_CLOCK 
TX eh referente ao BSG e RX ao BD
tx_slot e rx_slot sao valores de janela e tempo escolhida pelo host, via AMBA.
g_clk_tx e g_clk_rx s~ao os clocks enviados ao BSG e BD, respectivamente.

Caso tx_slot seja igual a tpuint_byte0, o g_clk_tx recebe o sys_clock, ate o valor maximo de tpuint_byte1.
Para o rx eh analogo.
*/

module gerador_clock(
input sys_clock,
input reset, //1: reseta, 0: nao reseta
input logic [7:0]tpu_control, //bit 7 a 5: n usado, bit 4: intflag, bit 3: timerintmsk, bit 2: rxslot_en, bit 1: txslot_en, bit 0: rsttpu
input logic [7:0]tx_slot,
input logic [7:0]rx_slot,
output logic g_clk_tx,
output logic g_clk_rx,
input logic [15:0]counter
);


 always_comb
 begin
 if (reset) begin
	g_clk_rx <= 0;
	g_clk_tx <= 0;
 end
 else begin
	if (counter[15:9] == tx_slot[6:0] && (counter[8:0] <= 9'b111111111) && tpu_control[1] == 1'b1)
		g_clk_tx <= sys_clock;
	else
		g_clk_tx <= 0;
		
	if (counter[15:9] == rx_slot[6:0] && (counter[8:0] <= 9'b111111111) && (tpu_control[2] == 1'b1))
		g_clk_rx <= sys_clock;
	else
		g_clk_rx <= 0;
 
 end 
 
 end
 
 endmodule 