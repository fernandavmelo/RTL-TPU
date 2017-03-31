/*PROJETOS DE EXCELENCIA EM MICROELETONICA - PEM
Modulo TPU
Design por: Fernanda, Ingrid, Ruan, Sarah
 */

module tpu(
input sys_clock,     //clock do barramento AMBA
input reset,         //reset geral da TPU
input valid,     //write-enable
input logic [7:0]addr, //endereço do registrador
input logic [7:0]data_in, //dado de entrada na TPU
output logic [7:0]data_out, //dado de saida da TPU
output logic g_clk_tx,     //Clock da modulaçao (BSG)
output logic g_clk_rx,     //Clock da demodulaçao (BD)
output tpu_int       //Sinal de Interrupçao
);

logic [15:0]counter;
logic [7:0]tx_slot;
logic [7:0]rx_slot;
logic rsttpu;
logic [7:0]tpu_control;
logic [7:0]tpuint_byte0;
logic [7:0]tpuint_byte1;
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

endmodule 