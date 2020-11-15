/////////////////////////////////////////////////////////////////////////
// Engineer: ChenZhuoyu
// Create Date: 2020-11-7 19:58:44
// Module Name: system_init_delay
// Project Name: SGMatch
// Target Devices: 
// Tool Versions: 
// Description:
// Revision: 1.01
// Additional Comments:
//////////////////////////////////////////////////////////////////////////
`timescale 1 ns / 1 ns
module system_ctrl_pll
(
	//globol clock
	input				clk,
	input				rst_n,
	
	output 				clk_i2c,		//clock output
	output 				clk_cmos,		//clock output
	output 				clk_video,		//clock output
	output				clk_video5X,		//clock output
	output				clk_200MHz		//clock output
	
);

camera_clktest u_camera_clk
(
.clk_in1                        (clk                  	),
.clk_out1                       (clk_cmos               ),//24M
.clk_out2                       (clk_i2c              	),//100M
.reset                          (1'b0                   ),
.locked                         (                     	)
);
/*************************************************************************
Generate the  clock required for the MIG
****************************************************************************/
clk_200M_1 clk_refm0
(
.clk_out1                       (clk_200MHz             ),      // output clk_out1
.reset                          (1'b0                  	),      // input reset
.locked                         (                       ),      // output locked
.clk_in1                        (clk                  	)       // input clk_in1
); 
/*************************************************************************
Generate the pixel clock and 5x pixel clock required for the video
****************************************************************************/
video_pll_1 video_pll_m0
(
.clk_in1                        (clk                  	),
.clk_out1                       (video_clk              ),
.clk_out2                       (video_clk5x           	),
.reset                          (1'b0                   ),
.locked                         (                       )
);

endmodule

