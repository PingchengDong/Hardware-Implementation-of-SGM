/////////////////////////////////////////////////////////////////////////
// Engineer: ChenZhuoyu
// Create Date: 2020-11-7 19:58:55
// Module Name: system_init_delay
// Project Name: SGMatch
// Target Devices: 
// Tool Versions: 
// Description:
// Revision: 1.01
// Additional Comments:
//////////////////////////////////////////////////////////////////////////

`timescale 1 ns / 1 ns
module system_init_delay
#(
	parameter	SYS_DELAY_TOP = 24'd2500000	//50ms system init delay
)
(
	//global clock
	input	clk,		//50MHz
	input	rst_n,
	//system interface
	output	delay_done
);

//------------------------------------------
//Delay 50ms for steady state when power on
reg	[23:0] delay_cnt = 24'd0;
wire [23:0] delay_cnt_w = delay_cnt+1'b1;
always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
		delay_cnt <= 0;
	else if(delay_cnt < SYS_DELAY_TOP - 1'b1)
		delay_cnt <= delay_cnt_w;
	else
		delay_cnt <= SYS_DELAY_TOP - 1'b1;
end
assign	delay_done = (delay_cnt == SYS_DELAY_TOP - 1'b1)? 1'b1 : 1'b0;

endmodule
