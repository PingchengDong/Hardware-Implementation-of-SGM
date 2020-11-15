/////////////////////////////////////////////////////////////////////////
// Engineer: ChenZhuoyu
// Create Date: 2020-11-7 20:28:19
// Module Name: system_init_delay
// Project Name: SGMatch
// Target Devices: 
// Tool Versions: 
// Description:
// Revision: 1.01
// Additional Comments:
//////////////////////////////////////////////////////////////////////////
`timescale 1ns/1ns
module	i2c_MT9V034_Gray_Config_L
(
	input		[7:0]	LUT_INDEX,
	output	reg	[23:0]	LUT_DATA,
	output		[7:0]	LUT_SIZE
);

assign	LUT_SIZE = 8'd30;

//-----------------------------------------------------------------
/////////////////////	Config Data LUT	  //////////////////////////	
always@(*)
begin
	case(LUT_INDEX)
//	MT9V034 Register
	//Read Data Index
	0	:	LUT_DATA	=	{8'hFE, 16'hBEEF};	//Register Lock Code(0xBEEF: unlocked, 0xDEAD: locked)
	1	:	LUT_DATA	=	{8'h00, 16'h1313};	//Chip Verision (Read only)
	//Write Data Index
	//[Reset Registers]
	2	: 	LUT_DATA	= 	{8'h0C, 16'h0001};	// BIT[1:0]-Reset the Registers, At least 15 clocks
	20 	: 	LUT_DATA	= 	{8'h0C, 16'h0000};	// BIT[1:0]-Reset the Registers
	//[Vertical/Hortical Mirror]
	21	:	LUT_DATA	= 	{8'h0D, 16'h0330};	// BIT[4] : ROW Flip;	BIT[5]:	Column Flip
	22	:	LUT_DATA	= 	{8'h70, 16'b0000000000000001};
	23	:	LUT_DATA = 	{8'h02,16'h1e5};//下降485
//	24	:	LUT_DATA = 	{8'h1c,16'h03};//提高亮度

//	25	:	LUT_DATA = 	{8'h02,16'h7c};
//	26	:	LUT_DATA = 	{8'h03,16'h1da};
										
	
	default:LUT_DATA	=	{8'h00, 16'h1313};	//Chip Verision (Read only)
	endcase
end

endmodule
