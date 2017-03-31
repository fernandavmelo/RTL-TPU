/*TIMER
Contador 16 bits.
tpuint_byte0 recebe os 7 bits mais significativos, referente as janelas de tempo (max = 128)
tpuint_byte1 recebe os 9 bits menos significativos, referentes aos ciclos de clock (max = 512) */

module timer(
input sys_clock,
input reset, //1: reseta, 0: nao reseta
input rsttpu,
input logic [7:0]tpu_control, //bit 7 a 5: n usado, bit 4: intflag, bit 3: timerintmsk, bit 2: rxslot_en, bit 1: txslot_en, bit 0: rsttpu
input logic [7:0]tpuint_byte0,
input logic [7:0]tpuint_byte1,
output logic tpu_int,
output logic [15:0]counter,
output logic intflag
);



  
always @ (posedge sys_clock or posedge reset) 
begin 
	if  (reset)
	 begin
		counter <= 16'd0;
		tpu_int <= 1'd0;
    end
	else 
	 begin
		if (rsttpu)
		 begin
			counter <= 0;
		 end 
		else
			counter <= counter + 16'd1;

		//Interrupçao TPU_INT
			if (counter == {tpuint_byte1,tpuint_byte0}) begin
				 intflag <= 1'b1;
				 if (tpu_control[3])
				 tpu_int <= 1'b1;
			end
			else begin 
				 intflag <= 1'b0;
				 tpu_int <= !tpu_control[4] && tpu_control[4];
				 end
	

	end 
end

endmodule 