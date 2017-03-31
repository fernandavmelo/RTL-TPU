module register_file(
	input sys_clock,
	input reset, //1: reseta, 0: nao reseta
	input logic [7:0]data_in,
	input we, //write-enable
	input logic [7:0]addr,
	output logic [7:0]data_out,
	
	output logic [7:0]tpu_control,
	output logic [7:0]tpuint_byte0,
	output logic [7:0]tpuint_byte1,
	output logic [7:0]tx_slot,
	output logic [7:0]rx_slot,
	output logic rsttpu,
	input intflag
);




always @ (posedge sys_clock or posedge reset)
begin
if (reset) begin  
	tpu_control <= 8'd0;
	tpuint_byte0 <= 8'd0;
	tpuint_byte1 <= 8'd0;
	tx_slot <= 8'd0;
	rx_slot <= 8'd0;
	rsttpu <= 1'd0;
end
else begin

		
  if (we == 1'b1) begin
		case (addr)
			8'h20: begin
						tpu_control <= data_in;  //bit 7 a 5: n usado, bit 4: intflag, bit 3: timerintmsk, bit 2: rxslot_en, bit 1: txslot_en, bit 0: rsttpu
						data_out <= tpu_control;
					end
			8'h21: begin
						tx_slot <= data_in;
						data_out <= tx_slot;
					end
			8'h22: begin
						rx_slot <= data_in;
						data_out <= rx_slot;
					end
			8'h23: begin
						tpuint_byte0 <= data_in;
						data_out <= tpuint_byte0;
					end
			8'h24: begin
						tpuint_byte1 <= data_in;
						data_out <= tpuint_byte1;
					end
		endcase
	end
	else begin
	case (addr)
			8'h20: begin
						data_out <= tpu_control;  //bit 7 a 5: n usado, bit 4: intflag, bit 3: timerintmsk, bit 2: rxslot_en, bit 1: txslot_en, bit 0: rsttpu
					end
			8'h21: begin
						data_out <= tx_slot;
					end
			8'h22: begin
						data_out <= rx_slot;
					end
			8'h23: begin
						data_out <= tpuint_byte0;
					end
			8'h24: begin
						data_out <= tpuint_byte1;
					end
					endcase
	end
	
	// Reset do Timer
	if (tpu_control[0])
	begin
		rsttpu <= tpu_control[0];
		tpu_control[0] <= 1'd0;
	end
	else 
		rsttpu <= 1'd0;

		// Mudanca do valor do intflag //FALTA SO ISSOOOOOOOOOO
	/*if (!(intflag || tpu_control[4]))
		tpu_control[4]<= intflag;
	else
		tpu_control[4] <= 1'd0;*/
		
		if (intflag)
			tpu_control[4] <= 1'b1;
end		
end 

endmodule 


