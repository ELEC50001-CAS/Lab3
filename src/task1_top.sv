//------------------------------
// Module name: task1_top
// Function: Top level module Lab 3 task 1
//   		 .......  to show 10 switch setting on THREE 7-seg displays
// Creator:  Peter Cheung
// Version:  2.0
// Date:     30 Oct 2022
//------------------------------
module  task1_top (
	input  logic [9:0]		SW,					// input switches	
	output logic [6:0]		HEX0, HEX1, HEX2	// Hex output for 7-seg display
);

	hex_to_7seg	SEG0 (	.in (SW[3:0]), 			// in is signal name in hex_to_7seg
						.out (HEX0)		);		// out is signal name in hex_to_7seg

	hex_to_7seg	SEG1 (  .in (SW[7:4]),
						.out (HEX1)		);

	hex_to_7seg	SEG2 (	.in ({2'b0, SW[9:8]}),		
						.out (HEX2)		);	

endmodule
