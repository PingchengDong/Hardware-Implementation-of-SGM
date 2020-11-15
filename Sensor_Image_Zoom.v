/////////////////////////////////////////////////////////////////////////
// Engineer: ChenZhuoyu
// Create Date: 2020-11-7 20:28:19
// Module Name: Sensor_Image_Zoom
// Project Name: SGMatch
// Target Devices: 
// Tool Versions: 
// Description:
// Revision: 1.01
// Additional Comments:
//////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ns
module Sensor_Image_Zoom
#(
	parameter	IMAGE_HSIZE_SOURCE	=	1280,
	parameter	IMAGE_VSIZE_SOURCE	=	1024,
	parameter	IMAGE_HSIZE_TARGET 	= 	1280,
	parameter	IMAGE_YSIZE_TARGET	= 	960
)
(
	//globel clock
	input				clk,				//image pixel clock
	input				rst_n,				//system reset
	
	//CMOS Sensor interface
	input				image_in_vsync,		//H : Data Valid; L : Frame Sync(Set it by register)
	input				image_in_href,		//H : Data vaild, L : Line Sync
	input		[7:0]	image_in_data,		//8 bits cmos data input
	output				image_out_vsync,	//H : Data Valid; L : Frame Sync(Set it by register)
	output				image_out_href,		//H : Data vaild, L : Line Sync
	output		[7:0]	image_out_data		//8 bits cmos data input	
);


//-----------------------------------
//Generate href negedge signal
reg			image_in_href_r;
reg			image_in_vsync_r;
reg	[7:0]	image_in_data_r;
always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
		begin
		image_in_vsync_r <= 0;
		image_in_href_r <= 0;
		image_in_data_r <= 0;
		end
	else
		begin
		image_in_vsync_r <= image_in_vsync;
		image_in_href_r <= image_in_href;
		image_in_data_r <= image_in_data;
		end
end
wire	image_in_href_negedge = (image_in_href_r & ~image_in_href) ? 1'b1 : 1'b0;

	
//-----------------------------------
//Image Ysize Crop
reg	[11:0] image_ypos;
always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
		image_ypos <= 0;
	else if(image_in_vsync == 1'b1)
		begin
		if(image_in_href_negedge == 1'b1)
			image_ypos <= image_ypos + 1'b1;
		else
			image_ypos <= image_ypos;
		end
	else
		image_ypos <= 0;
end
assign	image_out_vsync = image_in_vsync_r;

						   
						   
//-----------------------------------
//Image Hsize Crop
reg	[11:0] image_xpos;
always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
		image_xpos <= 0;
	else if(image_in_href == 1'b1)
		image_xpos <= image_xpos + 1'b1;
	else
		image_xpos <= 0;
end
assign	image_out_href = ((image_in_href_r == 1'b1) && 
						  (image_ypos >= (IMAGE_VSIZE_SOURCE - IMAGE_YSIZE_TARGET)/2) && 
						  (image_ypos <  (IMAGE_VSIZE_SOURCE - IMAGE_YSIZE_TARGET)/2 + IMAGE_YSIZE_TARGET) &&
						  (image_xpos >= (IMAGE_HSIZE_SOURCE - IMAGE_HSIZE_TARGET)/2) && 
						  (image_xpos <  (IMAGE_HSIZE_SOURCE - IMAGE_HSIZE_TARGET)/2 + IMAGE_HSIZE_TARGET))? 1'b1 : 1'b0;



assign	image_out_data = (image_out_vsync & image_out_href) ? image_in_data_r : 8'd0;				   


endmodule