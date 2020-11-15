`timescale 1ns / 1ns
module CMOS_VIP_HDL_Demo
(
	//global clock 50MHz
	input					clk,			//50MHz
	input					rst_n,			//global rese

	//cmos interface
	output					cmos1_sclk,		//cmos i2c clock
	inout					cmos1_sdat,		//cmos i2c data
	input					cmos1_pclk,		//cmos pxiel clock
	output					cmos1_xclk,		//cmos externl clock
	input					cmos1_vsync,	//cmos vsync
	input					cmos1_href,		//cmos hsync refrence
	input		[7:0]		cmos1_data,		//cmos data
	output					cmos1_ctl0,
	output					cmos1_ctl1,		//cmos fsin
	output					cmos1_ctl2,		//cmos pwdn	
		
	//cmos interface	
	output					cmos2_sclk,		//cmos i2c clock
	inout					cmos2_sdat,		//cmos i2c data
	input					cmos2_pclk,		//cmos pxiel clock
	output					cmos2_xclk,		//cmos externl clock
	input					cmos2_vsync,	//cmos vsync
	input					cmos2_href,		//cmos hsync refrence
	input		[7:0]		cmos2_data,		//cmos data
	output					cmos2_ctl0,
	output					cmos2_ctl1,		//cmos fsin
	output					cmos2_ctl2,		//cmos pwdn	
	//ddr3
	inout [31:0]            ddr3_dq,                //ddr3 data
	inout [3:0]             ddr3_dqs_n,             //ddr3 dqs negative
	inout [3:0]             ddr3_dqs_p,             //ddr3 dqs positive
	// Outputs
	output [14:0]           ddr3_addr,              //ddr3 address
	output [2:0]            ddr3_ba,                //ddr3 bank
	output                  ddr3_ras_n,             //ddr3 ras_n
	output                  ddr3_cas_n,             //ddr3 cas_n
	output                  ddr3_we_n,              //ddr3 write enable
	output                  ddr3_reset_n,           //ddr3 reset,
	output [0:0]            ddr3_ck_p,              //ddr3 clock negative
	output [0:0]            ddr3_ck_n,              //ddr3 clock positive
	output [0:0]            ddr3_cke,               //ddr3_cke,
	output [0:0]            ddr3_cs_n,              //ddr3 chip select,
	output [3:0]            ddr3_dm,                //ddr3_dm
	output [0:0]            ddr3_odt,               //ddr3_odt
	//hdmi output
	output                  tmds_clk_p,             //HDMI differential clock positive
	output                  tmds_clk_n,             //HDMI differential clock negative
	output[2:0]             tmds_data_p,            //HDMI differential data positiv
	output[2:0]             tmds_data_n            //HDMI differential data negative

);

assign	cmos1_ctl0 = 1'bz;
assign	cmos1_ctl1 = 1'b0;	//Sensor exposure
assign	cmos1_ctl2 = 1'b0;  //Sensor Standby

assign	cmos2_ctl0 = 1'bz;
assign	cmos2_ctl1 = 1'b0;	//Sensor exposure
assign	cmos2_ctl2 = 1'b0;  //Sensor Standby

parameter MEM_DATA_BITS          = 64;                 //external memory user interface data width
parameter ADDR_BITS              = 25;                 //external memory user interface address width
parameter BUSRT_BITS             = 10;                 //external memory user interface burst width

wire                            wr_burst_data_req;      // write burst data request       
wire                            wr_burst_finish;        // write burst finish flag
wire                            rd_burst_finish;        //read burst finish flag
wire                            rd_burst_req;           //read burst request
wire                            wr_burst_req;           //write burst request
wire[BUSRT_BITS - 1:0]          rd_burst_len;           //read burst length
wire[BUSRT_BITS - 1:0]          wr_burst_len;           //write burst length
wire[ADDR_BITS - 1:0]           rd_burst_addr;          //read burst address
wire[ADDR_BITS - 1:0]           wr_burst_addr;          //write burst address
wire                            rd_burst_data_valid;    //read burst data valid
wire[MEM_DATA_BITS - 1 : 0]     rd_burst_data;          //read burst data
wire[MEM_DATA_BITS - 1 : 0]     wr_burst_data;          //write burst data

wire                            ch0_wr_burst_data_req;  // ch0 write burst data request 
wire                            ch0_wr_burst_finish;    // ch0 write burst finish flag
wire                            ch0_rd_burst_finish;    //ch0 read burst finish flag
wire                            ch0_rd_burst_req;       //ch0 read burst request
wire                            ch0_wr_burst_req;       //ch0 write burst request
wire[BUSRT_BITS - 1:0]          ch0_rd_burst_len;       //ch0 read burst length
wire[BUSRT_BITS - 1:0]          ch0_wr_burst_len;       //ch0 write burst length
wire[ADDR_BITS - 1:0]           ch0_rd_burst_addr;      //ch0 read burst address
wire[ADDR_BITS - 1:0]           ch0_wr_burst_addr;      //ch0 write burst address
wire                            ch0_rd_burst_data_valid;//ch0 read burst data valid
wire[MEM_DATA_BITS - 1 : 0]     ch0_rd_burst_data;      //ch0 read burst data
wire[MEM_DATA_BITS - 1 : 0]     ch0_wr_burst_data;      //ch0 write burst data
wire                            ch0_read_req;           //ch0 read request
wire                            ch0_read_req_ack;       //ch0 read request response  
wire                            ch0_read_en;            //ch0 read enable
wire[15:0]                      ch0_read_data;          //ch0 read data
wire                            ch0_write_en;           //ch0 write enable
wire[15:0]                      ch0_write_data;         //ch0 write data
wire                            ch0_write_req;          //ch0 write request
wire                            ch0_write_req_ack;      //ch0 write request response
wire[1:0]                       ch0_write_addr_index;   //ch0 write address index
wire[1:0]                       ch0_read_addr_index;    //ch0 read address index
//comment is similar to the ch0 channel above
wire                            ch1_wr_burst_data_req;
wire                            ch1_wr_burst_finish;
wire                            ch1_rd_burst_finish;
wire                            ch1_rd_burst_req;
wire                            ch1_wr_burst_req;
wire[BUSRT_BITS - 1:0]          ch1_rd_burst_len;
wire[BUSRT_BITS - 1:0]          ch1_wr_burst_len;
wire[ADDR_BITS - 1:0]           ch1_rd_burst_addr;
wire[ADDR_BITS - 1:0]           ch1_wr_burst_addr;
wire                            ch1_rd_burst_data_valid;
wire[MEM_DATA_BITS - 1 : 0]     ch1_rd_burst_data;
wire[MEM_DATA_BITS - 1 : 0]     ch1_wr_burst_data;
wire                            ch1_read_req;
wire                            ch1_read_req_ack;
wire                            ch1_read_en;
wire[15:0]                      ch1_read_data;
wire                            ch1_write_en;
wire[15:0]                      ch1_write_data;
wire                            ch1_write_req;
wire                            ch1_write_req_ack;
wire[1:0]                       ch1_write_addr_index;
wire[1:0]                       ch1_read_addr_index;

//---------------------------------------------
//system global clock control

wire  							clk_i2c                              ;
wire  							clk_cmos                             ;
wire  							clk_200MHz                           ;
wire                            video_clk;              //video pixel clock
wire                            video_clk5x;            //video 5 x pixel clock
wire                            hs;                     //horizontal synchronization
wire                            vs;                     //vertical synchronization
wire                            de;                     //video valid

wire[15:0]                      vout_data;               //video data
wire[15:0]                      cmos1_16bit_data;        //camera coms1 data
wire                            cmos1_16bit_wr;          //camera coms1 write enable
wire[9:0]                       cmos1_lut_index;         //camera coms1 look up table address
wire[31:0]                      cmos1_lut_data;          //camera coms1 Device address,register address, register data

wire[15:0]                      cmos2_16bit_data;        //camera coms2 data
wire                            cmos2_16bit_wr;          //camera coms2 write enable
wire[9:0]                       cmos2_lut_index;         //camera coms2 look up table address
wire[31:0]                      cmos2_lut_data;          //camera coms2 Device address,register address, register data

wire                            ui_clk;                  //MIG master clock
wire                            ui_clk_sync_rst;         //MIG master reset
wire                            init_calib_complete;     //MIG initialization omplete
// Master Write Address
wire [3:0]                      s00_axi_awid;
wire [63:0]                     s00_axi_awaddr;
wire [7:0]                      s00_axi_awlen;           // burst length: 0-255
wire [2:0]                      s00_axi_awsize;          // burst size: fixed 2'b011
wire [1:0]                      s00_axi_awburst;         // burst type: fixed 2'b01(incremental burst)
wire                            s00_axi_awlock;          // lock: fixed 2'b00
wire [3:0]                      s00_axi_awcache;         // cache: fiex 2'b0011
wire [2:0]                      s00_axi_awprot;          // protect: fixed 2'b000
wire [3:0]                      s00_axi_awqos;           // qos: fixed 2'b0000
wire [0:0]                      s00_axi_awuser;          // user: fixed 32'd0
wire                            s00_axi_awvalid;
wire                            s00_axi_awready;
// master write data
wire [63:0]                     s00_axi_wdata;
wire [7:0]                      s00_axi_wstrb;
wire                            s00_axi_wlast;
wire [0:0]                      s00_axi_wuser;
wire                            s00_axi_wvalid;
wire                            s00_axi_wready;
// master write response
wire [3:0]                      s00_axi_bid;
wire [1:0]                      s00_axi_bresp;
wire [0:0]                      s00_axi_buser;
wire                            s00_axi_bvalid;
wire                            s00_axi_bready;
// master read address
wire [3:0]                      s00_axi_arid;
wire [63:0]                     s00_axi_araddr;
wire [7:0]                      s00_axi_arlen;
wire [2:0]                      s00_axi_arsize;
wire [1:0]                      s00_axi_arburst;
wire [1:0]                      s00_axi_arlock;
wire [3:0]                      s00_axi_arcache;
wire [2:0]                      s00_axi_arprot;
wire [3:0]                      s00_axi_arqos;
wire [0:0]                      s00_axi_aruser;
wire                            s00_axi_arvalid;
wire                            s00_axi_arready;
// master read data
wire [3:0]                      s00_axi_rid;
wire [63:0]                     s00_axi_rdata;
wire [1:0]                      s00_axi_rresp;
wire                            s00_axi_rlast;
wire [0:0]                      s00_axi_ruser;
wire                            s00_axi_rvalid;
wire                            s00_axi_rready;

wire                            hdmi_hs;                //hdmi horizontal synchronization
wire                            hdmi_vs;                //hdmi vertical synchronization
wire                            hdmi_de;                //hdmi data valid
wire[7:0]                       hdmi_r;                 //hdmi red data
wire[7:0]                       hdmi_g;                 //hdmi green data
wire[7:0]                       hdmi_b;                 //hdmi blue data


assign  hdmi_hs    = hs;
assign  hdmi_vs    = vs;
assign  hdmi_de    = de;
assign hdmi_r      = {vout_data[15:11],3'd0};
assign hdmi_g      = {vout_data[10:5],2'd0};
assign hdmi_b      = {vout_data[4:0],3'd0};

assign cmos1_rst_n = 1'b1;
assign cmos2_rst_n = 1'b1;
assign ch0_write_en = cmos1_16bit_wr;
assign ch0_write_data = {cmos1_16bit_data[4:0],cmos1_16bit_data[10:5],cmos1_16bit_data[15:11]};

assign ch1_write_en = cmos2_16bit_wr;
assign ch1_write_data = {cmos2_16bit_data[4:0],cmos2_16bit_data[10:5],cmos2_16bit_data[15:11]};
system_ctrl_pll  u_system_ctrl_pll (
    .clk                     ( clk           ),
    .rst_n                   ( rst_n         ),

    .clk_i2c                 ( clk_i2c       ),
    .clk_cmos                ( clk_cmos      ),
    .clk_video               ( video_clk     ),
    .clk_video5X             ( video_clk5x   ),
    .clk_200MHz              ( clk_200MHz    )
);

localparam	CLOCK_MAIN	=	50_000000;
localparam	CLOCK_CMOS	=	24_000000;
localparam	CLOCK_I2C   =   100_000;

//--------------------------------------------------------------------------------------
//----------------------------------------------
//MT9V034 Sensor1 Init and RAW Capture
wire			cmos1_zoom_vsync;	//cmos frame data vsync valid signal
wire			cmos1_zoom_href;	//cmos frame data href vaild  signal
wire	[7:0]	cmos1_zoom_Gray;	//cmos frame data output: 8 Bit raw data
wire	[7:0]	cmos1_fps_rate;		//cmos image output rate
wire			cmos1_i2c_config_done;
SingleSensorDriver_MT9V034_L
#(
	.CLOCK_MAIN			(CLOCK_MAIN),
	.CLOCK_I2C 			(CLOCK_I2C)
)
u_SingleSensorDriver_MT9V034_Sensor1
(
	.clk_ref			(clk_i2c		),
	.clk_cmos			(clk_cmos		),
	.rst_n				(rst_n		),

	//cmos interface
	.cmos_sclk			(cmos1_sclk		),		//cmos i2c clock
	.cmos_sdat			(cmos1_sdat		),		//cmos i2c data
	.cmos_pclk			(cmos1_pclk		),		//cmos pxiel clock
	.cmos_xclk			(cmos1_xclk		),		//cmos externl clock
	.cmos_vsync			(cmos1_vsync	),		//cmos vsync
	.cmos_href			(cmos1_href		),		//cmos hsync refrence
	.cmos_data			(cmos1_data		),		//cmos data
	//sensor data capture output
	
	.cmos_zoom_vsync	(cmos1_zoom_vsync	),	//cmos frame data vsync valid signal
	.cmos_zoom_href		(cmos1_zoom_href	),	//cmos frame data href vaild  signal
	.cmos_zoom_Gray		(cmos1_zoom_Gray	),	//cmos frame data output: 8 Bit raw data
	.cmos_fps_rate		(cmos1_fps_rate		),	//cmos image output rate

	//User Interface
	.i2c_config_done	(cmos1_i2c_config_done	)
);

//----------------------------------------------
//MT9V034 Sensor2 Init and RAW Capture
wire			cmos2_zoom_vsync;	//cmos frame data vsync valid signal
wire			cmos2_zoom_href;	//cmos frame data href vaild  signal
wire	[7:0]	cmos2_zoom_Gray;	//cmos frame data output: 8 Bit raw data
wire	[7:0]	cmos2_fps_rate;		//cmos image output rate
wire			cmos2_i2c_config_done;
SingleSensorDriver_MT9V034_R
#(
	.CLOCK_MAIN			(CLOCK_MAIN),
	.CLOCK_I2C 			(CLOCK_I2C)
)
u_SingleSensorDriver_MT9V034_Sensor2
(
	.clk_ref			(clk_i2c		),
	.clk_cmos			(clk_cmos		),
	.rst_n				(rst_n		),
	
	//cmos interface
	.cmos_sclk			(cmos2_sclk		),		//cmos i2c clock
	.cmos_sdat			(cmos2_sdat		),		//cmos i2c data
	.cmos_pclk			(cmos2_pclk		),		//cmos pxiel clock
	.cmos_xclk			(cmos2_xclk		),		//cmos externl clock
	.cmos_vsync			(cmos2_vsync	),		//cmos vsync
	.cmos_href			(cmos2_href		),		//cmos hsync refrence
	.cmos_data			(cmos2_data		),		//cmos data
	//sensor data capture output
	
	.cmos_zoom_vsync	(cmos2_zoom_vsync	),	//cmos frame data vsync valid signal
	.cmos_zoom_href		(cmos2_zoom_href	),	//cmos frame data href vaild  signal
	.cmos_zoom_Gray		(cmos2_zoom_Gray	),	//cmos frame data output: 8 Bit raw data
	.cmos_fps_rate		(cmos2_fps_rate		),	//cmos image output rate

	//User Interface
	.i2c_config_done	(cmos2_i2c_config_done	)
);
								
wire	[7:0]	ham_data_in_L;				
wire	[7:0]	ham_data_in_R;

wire empty_L;
wire empty_R;
wire full_L;
wire full_R;
wire read_clk = clk_cmos;
wire rd_en = (empty_L || empty_R) ? 1'b0 : 1'b1;

fifo_asynchronous0  u_fifo_asynchronous_L (
    .rst                     ( rst_n           		),
    .wr_clk                  ( cmos1_pclk        	),
    .rd_clk                  ( read_clk        		),
    .din                     ( cmos1_zoom_Gray [7:0]),
    .wr_en                   ( cmos1_zoom_href      ),
    .rd_en                   ( rd_en         		),

    .dout                    ( ham_data_in_L [7:0] 	),
    .full                    ( full_L          		),
    .empty                   ( empty_L         		),
	.wr_rst_busy			 (						),
  	.rd_rst_busy			 (						)
);

fifo_asynchronous0  u_fifo_asynchronous_R (
    .rst                     ( rst_n           		),
    .wr_clk                  ( cmos2_pclk        	),
    .rd_clk                  ( read_clk        		),
    .din                     ( cmos2_zoom_Gray [7:0]),
    .wr_en                   ( cmos2_zoom_href      ),
    .rd_en                   ( rd_en         		),

    .dout                    ( ham_data_in_R [7:0] 	),
    .full                    ( full_R          		),
    .empty                   ( empty_R         		),
	.wr_rst_busy			 (						),
  	.rd_rst_busy			 (						)		
);


wire [6:0] disp;
wire valid_hamming;
wire clk_hamming;
assign clk_hamming = read_clk;
//assign clk_hamming=valid_final ? (sys_rd ? clk_25m : 1'b0) : clk_25m;

top_hamming 
#(
	.width(640),
	.height(480)
)
u_top_hamming
(
	.clk(clk_hamming),
	.rst(rst_n),
	.clken(rd_en),
	.data_L(ham_data_in_R),
	.data_R(ham_data_in_L),
	.disp(disp),
	.valid_final(valid_hamming)
);


wire	[7:0]	RED;
wire 	[7:0]	GREEN;
wire 	[7:0]	BLUE;
wire 	[7:0] 	gray2rgb_in = {disp[6:0],1'b0};
wire 			valid_final;

gray2rgb u_gray2rgb(
	.CLK				(clk_hamming	),
	.RST_N				(sys_rst_n		),
	.GRAY				(gray2rgb_in	),
	.clken				(valid_hamming	),
	.RED				(RED			),
	.GREEN				(GREEN			),
	.BLUE				(BLUE			),
	.valid				(valid_final	)
);
wire [15:0] gray2rgb_out = {RED[4:0],GREEN[5:0],BLUE[4:0]};
wire write_en = valid_final & rd_en;

wire [15:0] disp_out = {disp[4:0],disp[5:0],disp[4:0]};



/*************************************************************************
CMOS1 sensor writes the request and generates the read and write address index
****************************************************************************/ 
cmos_write_req_gen cmos_write_req_gen_m0
(
.rst                            (~rst_n                   ),
.pclk                           (cmos1_pclk               ),
.cmos_vsync                     (cmos1_vsync              ),
.write_req                      (ch0_write_req            ),
.write_addr_index               (ch0_write_addr_index     ),
.read_addr_index                (ch0_read_addr_index      ),
.write_req_ack                  (ch0_write_req_ack        )
);

cmos_write_req_gen cmos_write_req_gen_m1(
.rst                            (~rst_n                   ),
.pclk                           (cmos2_pclk               ),
.cmos_vsync                     (cmos2_zoom_vsync         ),
.write_req                      (ch1_write_req            ),
.write_addr_index               (ch1_write_addr_index     ),
.read_addr_index                (ch1_read_addr_index      ),
.write_req_ack                  (ch1_write_req_ack        )
);

/*************************************************************************
video frame data read-write control
/****************************************************************************/
frame_read_write frame_read_write_m0
(
.rst                            (~rst_n                   ),
.mem_clk                        (ui_clk                   ),
.rd_burst_req                   (ch0_rd_burst_req         ),
.rd_burst_len                   (ch0_rd_burst_len         ),
.rd_burst_addr                  (ch0_rd_burst_addr        ),
.rd_burst_data_valid            (ch0_rd_burst_data_valid  ),
.rd_burst_data                  (ch0_rd_burst_data        ),
.rd_burst_finish                (ch0_rd_burst_finish      ),
.read_clk                       (video_clk                ),
.read_req                       (ch0_read_req             ),
.read_req_ack                   (ch0_read_req_ack         ),
.read_finish                    (                         ),
.read_addr_0                    (25'd0                    ), //The first frame address is 0
.read_addr_1                    (25'd2073600              ), //The second frame address is 25'd2073600 ,large enough address space for one frame of video
.read_addr_2                    (25'd4147200              ),
.read_addr_3                    (25'd6220800              ),
.read_addr_index                (ch0_read_addr_index      ),
.read_len                       (25'd196608               ),//frame size  1024 * 768 * 16 / 64
.read_en                        (ch0_read_en              ),
.read_data                      (ch0_read_data            ),

.wr_burst_req                   (ch0_wr_burst_req         ),
.wr_burst_len                   (ch0_wr_burst_len         ),
.wr_burst_addr                  (ch0_wr_burst_addr        ),
.wr_burst_data_req              (ch0_wr_burst_data_req    ),
.wr_burst_data                  (ch0_wr_burst_data        ),
.wr_burst_finish                (ch0_wr_burst_finish      ),
.write_clk                      (cmos1_pclk               ),
.write_req                      (ch0_write_req            ),
.write_req_ack                  (ch0_write_req_ack        ),
.write_finish                   (                         ),
.write_addr_0                   (25'd0                    ),
.write_addr_1                   (25'd2073600              ),
.write_addr_2                   (25'd4147200              ),
.write_addr_3                   (25'd6220800              ),
.write_addr_index               (ch0_write_addr_index     ),
.write_len                      (25'd196608               ),
.write_en                       (write_en             ),
.write_data                     (gray2rgb_out           )
);

frame_read_write frame_read_write_m1
(
.rst                            (~rst_n                   ),
.mem_clk                        (ui_clk                   ),
.rd_burst_req                   (ch1_rd_burst_req         ),
.rd_burst_len                   (ch1_rd_burst_len         ),
.rd_burst_addr                  (ch1_rd_burst_addr        ),
.rd_burst_data_valid            (ch1_rd_burst_data_valid  ),
.rd_burst_data                  (ch1_rd_burst_data        ),
.rd_burst_finish                (ch1_rd_burst_finish      ),
.read_clk                       (video_clk                ),
.read_req                       (ch1_read_req             ),
.read_req_ack                   (ch1_read_req_ack         ),
.read_finish                    (                         ),
.read_addr_0                    (25'd8294400              ), //The first frame address is 0
.read_addr_1                    (25'd10368000             ), //The second frame address is 25'd2073600 ,large enough address space for one frame of video
.read_addr_2                    (25'd12441600             ),
.read_addr_3                    (25'd14515200             ),
.read_addr_index                (ch1_read_addr_index      ),
.read_len                       (25'd196608               ),//frame size  1024 * 768 * 16 / 64
.read_en                        (ch1_read_en              ),
.read_data                      (ch1_read_data            ),

.wr_burst_req                   (ch1_wr_burst_req         ),
.wr_burst_len                   (ch1_wr_burst_len         ),
.wr_burst_addr                  (ch1_wr_burst_addr        ),
.wr_burst_data_req              (ch1_wr_burst_data_req    ),
.wr_burst_data                  (ch1_wr_burst_data        ),
.wr_burst_finish                (ch1_wr_burst_finish      ),
.write_clk                      (cmos2_pclk               ),
.write_req                      (ch1_write_req            ),
.write_req_ack                  (ch1_write_req_ack        ),
.write_finish                   (                         ),
.write_addr_0                   (25'd8294400              ),
.write_addr_1                   (25'd10368000             ),
.write_addr_2                   (25'd12441600             ),
.write_addr_3                   (25'd14515200             ),
.write_addr_index               (ch1_write_addr_index     ),
.write_len                      (25'd196608               ),
.write_en                       (cmos2_zoom_href          ),
.write_data                     (cmos2_zoom_Gray          )
);

/*************************************************************************
read us arbitration
****************************************************************************/
mem_read_arbi 
#(
.MEM_DATA_BITS                  (MEM_DATA_BITS            ),
.ADDR_BITS                      (ADDR_BITS                ),
.BUSRT_BITS                     (BUSRT_BITS               )
)
mem_read_arbi_m0
(
.rst_n                          (rst_n                    ),
.mem_clk                        (ui_clk                   ),
.ch0_rd_burst_req               (ch0_rd_burst_req         ),
.ch0_rd_burst_len               (ch0_rd_burst_len         ),
.ch0_rd_burst_addr              (ch0_rd_burst_addr        ),
.ch0_rd_burst_data_valid        (ch0_rd_burst_data_valid  ),
.ch0_rd_burst_data              (ch0_rd_burst_data        ),
.ch0_rd_burst_finish            (ch0_rd_burst_finish      ),

.ch1_rd_burst_req               (ch1_rd_burst_req         ),
.ch1_rd_burst_len               (ch1_rd_burst_len         ),
.ch1_rd_burst_addr              (ch1_rd_burst_addr        ),
.ch1_rd_burst_data_valid        (ch1_rd_burst_data_valid  ),
.ch1_rd_burst_data              (ch1_rd_burst_data        ),
.ch1_rd_burst_finish            (ch1_rd_burst_finish      ),

.rd_burst_req                   (rd_burst_req             ),
.rd_burst_len                   (rd_burst_len             ),
.rd_burst_addr                  (rd_burst_addr            ),
.rd_burst_data_valid            (rd_burst_data_valid      ),
.rd_burst_data                  (rd_burst_data            ),
.rd_burst_finish                (rd_burst_finish          )	
);
/*************************************************************************
write bus arbitration
****************************************************************************/
mem_write_arbi
#(
.MEM_DATA_BITS                  (MEM_DATA_BITS            ),
.ADDR_BITS                      (ADDR_BITS                ),
.BUSRT_BITS                     (BUSRT_BITS               )
)
mem_write_arbi_m0
(
.rst_n                          (rst_n                    ),
.mem_clk                        (ui_clk                   ),

.ch0_wr_burst_req               (ch0_wr_burst_req         ),
.ch0_wr_burst_len               (ch0_wr_burst_len         ),
.ch0_wr_burst_addr              (ch0_wr_burst_addr        ),
.ch0_wr_burst_data_req          (ch0_wr_burst_data_req    ),
.ch0_wr_burst_data              (ch0_wr_burst_data        ),
.ch0_wr_burst_finish            (ch0_wr_burst_finish      ),

.ch1_wr_burst_req               (ch1_wr_burst_req         ),
.ch1_wr_burst_len               (ch1_wr_burst_len         ),
.ch1_wr_burst_addr              (ch1_wr_burst_addr        ),
.ch1_wr_burst_data_req          (ch1_wr_burst_data_req    ),
.ch1_wr_burst_data              (ch1_wr_burst_data        ),
.ch1_wr_burst_finish            (ch1_wr_burst_finish      ),

.wr_burst_req                   (wr_burst_req             ),
.wr_burst_len                   (wr_burst_len             ),
.wr_burst_addr                  (wr_burst_addr            ),
.wr_burst_data_req              (wr_burst_data_req        ),
.wr_burst_data                  (wr_burst_data            ),
.wr_burst_finish                (wr_burst_finish          )	
);

/*************************************************************************
AXI User Interface Conversion 
****************************************************************************/
aq_axi_master u_aq_axi_master
(
.ARESETN                        (~ui_clk_sync_rst         ),
.ACLK                           (ui_clk                   ),
.M_AXI_AWID                     (s00_axi_awid             ),
.M_AXI_AWADDR                   (s00_axi_awaddr           ),
.M_AXI_AWLEN                    (s00_axi_awlen            ),
.M_AXI_AWSIZE                   (s00_axi_awsize           ),
.M_AXI_AWBURST                  (s00_axi_awburst          ),
.M_AXI_AWLOCK                   (s00_axi_awlock           ),
.M_AXI_AWCACHE                  (s00_axi_awcache          ),
.M_AXI_AWPROT                   (s00_axi_awprot           ),
.M_AXI_AWQOS                    (s00_axi_awqos            ),
.M_AXI_AWUSER                   (s00_axi_awuser           ),
.M_AXI_AWVALID                  (s00_axi_awvalid          ),
.M_AXI_AWREADY                  (s00_axi_awready          ),
.M_AXI_WDATA                    (s00_axi_wdata            ),
.M_AXI_WSTRB                    (s00_axi_wstrb            ),
.M_AXI_WLAST                    (s00_axi_wlast            ),
.M_AXI_WUSER                    (s00_axi_wuser            ),
.M_AXI_WVALID                   (s00_axi_wvalid           ),
.M_AXI_WREADY                   (s00_axi_wready           ),
.M_AXI_BID                      (s00_axi_bid              ),
.M_AXI_BRESP                    (s00_axi_bresp            ),
.M_AXI_BUSER                    (s00_axi_buser            ),
.M_AXI_BVALID                   (s00_axi_bvalid           ),
.M_AXI_BREADY                   (s00_axi_bready           ),
.M_AXI_ARID                     (s00_axi_arid             ),
.M_AXI_ARADDR                   (s00_axi_araddr           ),
.M_AXI_ARLEN                    (s00_axi_arlen            ),
.M_AXI_ARSIZE                   (s00_axi_arsize           ),
.M_AXI_ARBURST                  (s00_axi_arburst          ),
.M_AXI_ARLOCK                   (s00_axi_arlock           ),
.M_AXI_ARCACHE                  (s00_axi_arcache          ),
.M_AXI_ARPROT                   (s00_axi_arprot           ),
.M_AXI_ARQOS                    (s00_axi_arqos            ),
.M_AXI_ARUSER                   (s00_axi_aruser           ),
.M_AXI_ARVALID                  (s00_axi_arvalid          ),
.M_AXI_ARREADY                  (s00_axi_arready          ),
.M_AXI_RID                      (s00_axi_rid              ),
.M_AXI_RDATA                    (s00_axi_rdata            ),
.M_AXI_RRESP                    (s00_axi_rresp            ),
.M_AXI_RLAST                    (s00_axi_rlast            ),
.M_AXI_RUSER                    (s00_axi_ruser            ),
.M_AXI_RVALID                   (s00_axi_rvalid           ),
.M_AXI_RREADY                   (s00_axi_rready           ),
.MASTER_RST                     (1'b0                     ),
.WR_START                       (wr_burst_req             ),
.WR_ADRS                        ({wr_burst_addr,3'd0}     ),
.WR_LEN                         ({wr_burst_len,3'd0}      ),
.WR_READY                       (                         ),
.WR_FIFO_RE                     (wr_burst_data_req        ),
.WR_FIFO_EMPTY                  (1'b0                     ),
.WR_FIFO_AEMPTY                 (1'b0                     ),
.WR_FIFO_DATA                   (wr_burst_data            ),
.WR_DONE                        (wr_burst_finish          ),
.RD_START                       (rd_burst_req             ),
.RD_ADRS                        ({rd_burst_addr,3'd0}     ),
.RD_LEN                         ({rd_burst_len,3'd0}      ),
.RD_READY                       (                         ),
.RD_FIFO_WE                     (rd_burst_data_valid      ),
.RD_FIFO_FULL                   (1'b0                     ),
.RD_FIFO_AFULL                  (1'b0                     ),
.RD_FIFO_DATA                   (rd_burst_data            ),
.RD_DONE                        (rd_burst_finish          ),
.DEBUG                          (                         )
);

ddr3 u_ddr3 
(
// Memory interface ports
.ddr3_addr                      (ddr3_addr                 ), 
.ddr3_ba                        (ddr3_ba                   ), 
.ddr3_cas_n                     (ddr3_cas_n                ), 
.ddr3_ck_n                      (ddr3_ck_n                 ), 
.ddr3_ck_p                      (ddr3_ck_p                 ),
.ddr3_cke                       (ddr3_cke                  ),  
.ddr3_ras_n                     (ddr3_ras_n                ), 
.ddr3_reset_n                   (ddr3_reset_n              ), 
.ddr3_we_n                      (ddr3_we_n                 ),  
.ddr3_dq                        (ddr3_dq                   ),  
.ddr3_dqs_n                     (ddr3_dqs_n                ),  
.ddr3_dqs_p                     (ddr3_dqs_p                ),  
.init_calib_complete            (init_calib_complete       ),  
 
.ddr3_cs_n                      (ddr3_cs_n                 ),  
.ddr3_dm                        (ddr3_dm                   ),  
.ddr3_odt                       (ddr3_odt                  ),  
// Application interface ports
.ui_clk                         (ui_clk                    ), 
.ui_clk_sync_rst                (ui_clk_sync_rst           ),  // output	   ui_clk_sync_rst
.mmcm_locked                    (                          ),  // output	    mmcm_locked
.aresetn                        (1'b1                      ),  // input			aresetn
.app_sr_req                     (1'b0                      ),  // input			app_sr_req
.app_ref_req                    (1'b0                      ),  // input			app_ref_req
.app_zq_req                     (1'b0                      ),  // input			app_zq_req
.app_sr_active                  (                          ),  // output	    app_sr_active
.app_ref_ack                    (                          ),  // output		app_ref_ack
.app_zq_ack                     (                          ),  // output		app_zq_ack
// Slave Interface Write Address Ports
.s_axi_awid                     (s00_axi_awid              ),  // input [0:0]	s_axi_awid
.s_axi_awaddr                   (s00_axi_awaddr            ),  // input [29:0]	s_axi_awaddr
.s_axi_awlen                    (s00_axi_awlen             ),  // input [7:0]	s_axi_awlen
.s_axi_awsize                   (s00_axi_awsize            ),  // input [2:0]	s_axi_awsize
.s_axi_awburst                  (s00_axi_awburst           ),  // input [1:0]	s_axi_awburst
.s_axi_awlock                   (s00_axi_awlock            ),  // input [0:0]	s_axi_awlock
.s_axi_awcache                  (s00_axi_awcache           ),  // input [3:0]	s_axi_awcache
.s_axi_awprot                   (s00_axi_awprot            ),  // input [2:0]	s_axi_awprot
.s_axi_awqos                    (s00_axi_awqos             ),  // input [3:0]	s_axi_awqos
.s_axi_awvalid                  (s00_axi_awvalid           ),  // input			s_axi_awvalid
.s_axi_awready                  (s00_axi_awready           ),  // output	    s_axi_awready
// Slave Interface Write Data Ports
.s_axi_wdata                    (s00_axi_wdata             ),  // input [63:0]	s_axi_wdata
.s_axi_wstrb                    (s00_axi_wstrb             ),  // input [7:0]	s_axi_wstrb
.s_axi_wlast                    (s00_axi_wlast             ),  // input			s_axi_wlast
.s_axi_wvalid                   (s00_axi_wvalid            ),  // input			s_axi_wvalid
.s_axi_wready                   (s00_axi_wready            ),  // output		s_axi_wready
// Slave Interface Write Response Ports
.s_axi_bid                      (s00_axi_bid               ),  // output [0:0]	s_axi_bid
.s_axi_bresp                    (s00_axi_bresp             ),  // output [1:0]	s_axi_bresp
.s_axi_bvalid                   (s00_axi_bvalid            ),  // output		s_axi_bvalid
.s_axi_bready                   (s00_axi_bready            ),  // input			s_axi_bready
// Slave Interface Read Address Ports
.s_axi_arid                     (s00_axi_arid              ),  // input [0:0]	s_axi_arid
.s_axi_araddr                   (s00_axi_araddr            ),  // input [29:0]	s_axi_araddr
.s_axi_arlen                    (s00_axi_arlen             ),  // input [7:0]	s_axi_arlen
.s_axi_arsize                   (s00_axi_arsize            ),  // input [2:0]	s_axi_arsize
.s_axi_arburst                  (s00_axi_arburst           ),  // input [1:0]	s_axi_arburst
.s_axi_arlock                   (s00_axi_arlock            ),  // input [0:0]	s_axi_arlock
.s_axi_arcache                  (s00_axi_arcache           ),  // input [3:0]	s_axi_arcache
.s_axi_arprot                   (s00_axi_arprot            ),  // input [2:0]	s_axi_arprot
.s_axi_arqos                    (s00_axi_arqos             ),  // input [3:0]	s_axi_arqos
.s_axi_arvalid                  (s00_axi_arvalid           ),  // input			s_axi_arvalid
.s_axi_arready                  (s00_axi_arready           ),  // output		s_axi_arready
// Slave Interface Read Data Ports
.s_axi_rid                      (s00_axi_rid               ),  // output [0:0]	s_axi_rid
.s_axi_rdata                    (s00_axi_rdata             ),  // output [63:0]	s_axi_rdata
.s_axi_rresp                    (s00_axi_rresp             ),  // output [1:0]	s_axi_rresp
.s_axi_rlast                    (s00_axi_rlast             ),  // output	    s_axi_rlast
.s_axi_rvalid                   (s00_axi_rvalid            ),  // output		s_axi_rvalid
.s_axi_rready                   (s00_axi_rready            ),  // input			s_axi_rready
// System Clock Ports
.sys_clk_i                      (clk_200MHz                ),  //               MIG clock
.sys_rst                        (rst_n                     )   //              input sys_rst
);


wire                            color_bar_hs;
wire                            color_bar_vs;
wire                            color_bar_de;
wire[7:0]                       color_bar_r;
wire[7:0]                       color_bar_g;
wire[7:0]                       color_bar_b;
wire                            v0_hs;
wire                            v0_vs;
wire                            v0_de;
wire[23:0]                      v0_data;
/*************************************************************************
video output timing generator
****************************************************************************/
color_bar color_bar_m0
(
.clk                            (video_clk                ),
.rst                            (~rst_n                   ),
.hs                             (color_bar_hs             ),
.vs                             (color_bar_vs             ),
.de                             (color_bar_de             ),
.rgb_r                          (color_bar_r              ),
.rgb_g                          (color_bar_g              ),
.rgb_b                          (color_bar_b              )
);
/*************************************************************************
generate a frame read data request
****************************************************************************/
video_rect_read_data video_rect_read_data_m0
(
.video_clk                      (video_clk                ),
.rst                            (~rst_n                   ),
.video_left_offset              (12'd0                    ),
.video_top_offset               (12'd0                    ),
.video_width                    (12'd640                  ),
.video_height	                (12'd480                  ),
.read_req                       (ch0_read_req             ),
.read_req_ack                   (ch0_read_req_ack         ),
.read_en                        (ch0_read_en              ),
.read_data                      (ch0_read_data            ),
.timing_hs                      (color_bar_hs             ),
.timing_vs                      (color_bar_vs             ),
.timing_de                      (color_bar_de             ),
.timing_data 	                ({color_bar_r[4:0],color_bar_g[5:0],color_bar_b[4:0]}),
.hs                             (v0_hs                    ),
.vs                             (v0_vs                    ),
.de                             (v0_de                    ),
.vout_data                      (v0_data                  )
);
/*************************************************************************
generate a frame read data request
****************************************************************************/
video_rect_read_data video_rect_read_data_m1
(
.video_clk                      (video_clk                ),
.rst                            (~rst_n                   ),
.video_left_offset              (12'd640                  ),
.video_top_offset               (12'd0                    ),
.video_width                    (12'd640                  ),
.video_height	                (12'd480                  ),
.read_req                       (ch1_read_req             ),
.read_req_ack                   (ch1_read_req_ack         ),
.read_en                        (ch1_read_en              ),
.read_data                      (ch1_read_data            ),
.timing_hs                      (v0_hs                    ),
.timing_vs                      (v0_vs                    ),
.timing_de                      (v0_de                    ),
.timing_data 	                (v0_data                  ),
.hs                             (hs                       ),
.vs                             (vs                       ),
.de                             (de                       ),
.vout_data                      (vout_data                )
);

/*************************************************************************
RGB to DVI conversion module
****************************************************************************/
dvi_encoder dvi_encoder_m0
(
 .pixelclk                      (video_clk                ),// system clock
 .pixelclk5x                    (video_clk5x              ),// system clock x5
 .rstin                         (~rst_n                   ),// reset
 .blue_din                      (hdmi_b                   ),// Blue data in
 .green_din                     (hdmi_g                   ),// Green data in
 .red_din                       (hdmi_r                   ),// Red data in
 .hsync                         (hdmi_hs                  ),// hsync data
 .vsync                         (hdmi_vs                  ),// vsync data
 .de                            (hdmi_de                  ),// data enable
 .tmds_clk_p                    (tmds_clk_p               ),
 .tmds_clk_n                    (tmds_clk_n               ),
 .tmds_data_p                   (tmds_data_p              ),//rgb
 .tmds_data_n                   (tmds_data_n              ) //rgb
);

// led_water_display
// #(
// 	.LED_WIDTH	(8)
// )
// u_led_water_display
// (
// 	//global clock
// 	.clk		(clk_ref),
// 	.rst_n		(sys_rst_n),
	
// 	//user led output
// 	.led_data	(led_data)
// );


endmodule
