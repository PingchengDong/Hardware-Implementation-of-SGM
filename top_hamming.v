//////////////////////////////////////////////////////////////////////////////////
// 
// Create Date: 2020/05/25 23:09:53
// Uptade Date: 2020/07/19 10:24:10
// Design Name: DongPingcheng
// Module Name: top_hamming
// Project Name: SGM
// 
//////////////////////////////////////////////////////////////////////////////////	
module top_hamming #(parameter width=640,parameter height=480)(
	input clk,
	input rst,
	input clken,
	input [7:0] data_L,
	input [7:0] data_R,
	output [6:0] disp,
	output valid_final
);
	wire [2:0] Hamming_0;  wire [2:0] Hamming_1;  wire [2:0] Hamming_2;  wire [2:0] Hamming_3;
	wire [2:0] Hamming_5;  wire [2:0] Hamming_6;  wire [2:0] Hamming_7;  wire [2:0] Hamming_8;
	wire [2:0] Hamming_9;  wire [2:0] Hamming_4;  wire [2:0] Hamming_12; wire [2:0] Hamming_13;
	wire [2:0] Hamming_14; wire [2:0] Hamming_15; wire [2:0] Hamming_16; wire [2:0] Hamming_17;
	wire [2:0] Hamming_18; wire [2:0] Hamming_19; wire [2:0] Hamming_20; wire [2:0] Hamming_21;
	wire [2:0] Hamming_22; wire [2:0] Hamming_23; wire [2:0] Hamming_24; wire [2:0] Hamming_25;
	wire [2:0] Hamming_26; wire [2:0] Hamming_27; wire [2:0] Hamming_28; wire [2:0] Hamming_29;
	wire [2:0] Hamming_30; wire [2:0] Hamming_31; wire [2:0] Hamming_32; wire [2:0] Hamming_33;
	wire [2:0] Hamming_34; wire [2:0] Hamming_35; wire [2:0] Hamming_36; wire [2:0] Hamming_37;
	wire [2:0] Hamming_38; wire [2:0] Hamming_39; wire [2:0] Hamming_40; wire [2:0] Hamming_41;
	wire [2:0] Hamming_42; wire [2:0] Hamming_43; wire [2:0] Hamming_44; wire [2:0] Hamming_45;
	wire [2:0] Hamming_46; wire [2:0] Hamming_47; wire [2:0] Hamming_48; wire [2:0] Hamming_49;
	wire [2:0] Hamming_50; wire [2:0] Hamming_51; wire [2:0] Hamming_52; wire [2:0] Hamming_53;
	wire [2:0] Hamming_54; wire [2:0] Hamming_55; wire [2:0] Hamming_56; wire [2:0] Hamming_57;
	wire [2:0] Hamming_58; wire [2:0] Hamming_59; wire [2:0] Hamming_60; wire [2:0] Hamming_61;
	wire [2:0] Hamming_62; wire [2:0] Hamming_63; wire [2:0] Hamming_64; wire [2:0] Hamming_65;
	wire [2:0] Hamming_66; wire [2:0] Hamming_67; wire [2:0] Hamming_68; wire [2:0] Hamming_69;
	wire [2:0] Hamming_70; wire [2:0] Hamming_71; wire [2:0] Hamming_72; wire [2:0] Hamming_73;
	wire [2:0] Hamming_74; wire [2:0] Hamming_75; wire [2:0] Hamming_76; wire [2:0] Hamming_77;
	wire [2:0] Hamming_78; wire [2:0] Hamming_79; wire [2:0] Hamming_80; wire [2:0] Hamming_81;
	wire [2:0] Hamming_82; wire [2:0] Hamming_83; wire [2:0] Hamming_84; wire [2:0] Hamming_85;
	wire [2:0] Hamming_86; wire [2:0] Hamming_87; wire [2:0] Hamming_88; wire [2:0] Hamming_89;
	wire [2:0] Hamming_90; wire [2:0] Hamming_91; wire [2:0] Hamming_92; wire [2:0] Hamming_93;
	wire [2:0] Hamming_94; wire [2:0] Hamming_95; wire [2:0] Hamming_96; wire [2:0] Hamming_97;
	wire [2:0] Hamming_98; wire [2:0] Hamming_99; wire [2:0] Hamming_100;wire [2:0] Hamming_101;
	wire [2:0] Hamming_102;wire [2:0] Hamming_103;wire [2:0] Hamming_104;wire [2:0] Hamming_105;
	wire [2:0] Hamming_106;wire [2:0] Hamming_107;wire [2:0] Hamming_108;wire [2:0] Hamming_109;
	wire [2:0] Hamming_110;wire [2:0] Hamming_111;wire [2:0] Hamming_112;wire [2:0] Hamming_113;
	wire [2:0] Hamming_114;wire [2:0] Hamming_115;wire [2:0] Hamming_116;wire [2:0] Hamming_117;
	wire [2:0] Hamming_118;wire [2:0] Hamming_119;wire [2:0] Hamming_120;wire [2:0] Hamming_121;
	wire [2:0] Hamming_122;wire [2:0] Hamming_123;wire [2:0] Hamming_124;wire [2:0] Hamming_125;
	wire [2:0] Hamming_126;wire [2:0] Hamming_127;wire [2:0] Hamming_10; wire [2:0] Hamming_11;
   wire valid;
   wire [7:0] disptemp;
	wire [7:0]disp0;
	wire valid_final0;



census_0 u_census_0(
	.sys_clk(clk),
	.sys_rst(rst),
	.clken(clken),
	.data_L(data_L),
	.data_R(data_R),
	.Hamming_0(Hamming_0),	  .Hamming_1(Hamming_1),    .Hamming_2(Hamming_2),    .Hamming_3(Hamming_3),
	.Hamming_4(Hamming_4),	  .Hamming_5(Hamming_5),    .Hamming_6(Hamming_6),    .Hamming_7(Hamming_7),
	.Hamming_8(Hamming_8),	  .Hamming_9(Hamming_9),	 .Hamming_10(Hamming_10),  .Hamming_11(Hamming_11),
	.Hamming_12(Hamming_12),  .Hamming_13(Hamming_13),  .Hamming_14(Hamming_14),  .Hamming_15(Hamming_15),
	.Hamming_16(Hamming_16),  .Hamming_17(Hamming_17),  .Hamming_18(Hamming_18),  .Hamming_19(Hamming_19),
	.Hamming_20(Hamming_20),  .Hamming_21(Hamming_21),  .Hamming_22(Hamming_22),  .Hamming_23(Hamming_23),
	.Hamming_24(Hamming_24),  .Hamming_25(Hamming_25),  .Hamming_26(Hamming_26),  .Hamming_27(Hamming_27),
	.Hamming_28(Hamming_28),  .Hamming_29(Hamming_29),  .Hamming_30(Hamming_30),  .Hamming_31(Hamming_31),
	.Hamming_32(Hamming_32),  .Hamming_33(Hamming_33),  .Hamming_34(Hamming_34),  .Hamming_35(Hamming_35),
	.Hamming_36(Hamming_36),  .Hamming_37(Hamming_37),  .Hamming_38(Hamming_38),  .Hamming_39(Hamming_39),
	.Hamming_40(Hamming_40),  .Hamming_41(Hamming_41),  .Hamming_42(Hamming_42),  .Hamming_43(Hamming_43),
	.Hamming_44(Hamming_44),  .Hamming_45(Hamming_45),  .Hamming_46(Hamming_46),  .Hamming_47(Hamming_47),
	.Hamming_48(Hamming_48),  .Hamming_49(Hamming_49),  .Hamming_50(Hamming_50),  .Hamming_51(Hamming_51),
	.Hamming_52(Hamming_52),  .Hamming_53(Hamming_53),  .Hamming_54(Hamming_54),  .Hamming_55(Hamming_55),
	.Hamming_56(Hamming_56),  .Hamming_57(Hamming_57),  .Hamming_58(Hamming_58),  .Hamming_59(Hamming_59),
	.Hamming_60(Hamming_60),  .Hamming_61(Hamming_61),  .Hamming_62(Hamming_62),  .Hamming_63(Hamming_63),
	.Hamming_64(Hamming_64),  .Hamming_65(Hamming_65),  .Hamming_66(Hamming_66),  .Hamming_67(Hamming_67),
	.Hamming_68(Hamming_68),  .Hamming_69(Hamming_69),  .Hamming_70(Hamming_70),  .Hamming_71(Hamming_71),
	.Hamming_72(Hamming_72),  .Hamming_73(Hamming_73),  .Hamming_74(Hamming_74),  .Hamming_75(Hamming_75),
	.Hamming_76(Hamming_76),  .Hamming_77(Hamming_77),  .Hamming_78(Hamming_78),  .Hamming_79(Hamming_79),
	.Hamming_80(Hamming_80),  .Hamming_81(Hamming_81),  .Hamming_82(Hamming_82),  .Hamming_83(Hamming_83),
	.Hamming_84(Hamming_84),  .Hamming_85(Hamming_85),  .Hamming_86(Hamming_86),  .Hamming_87(Hamming_87),
	.Hamming_88(Hamming_88),  .Hamming_89(Hamming_89),  .Hamming_90(Hamming_90),  .Hamming_91(Hamming_91),
	.Hamming_92(Hamming_92),  .Hamming_93(Hamming_93),  .Hamming_94(Hamming_94),  .Hamming_95(Hamming_95),
	.Hamming_96(Hamming_96),  .Hamming_97(Hamming_97),  .Hamming_98(Hamming_98),  .Hamming_99(Hamming_99),
	.Hamming_100(Hamming_100),.Hamming_101(Hamming_101),.Hamming_102(Hamming_102),.Hamming_103(Hamming_103),
	.Hamming_104(Hamming_104),.Hamming_105(Hamming_105),.Hamming_106(Hamming_106),.Hamming_107(Hamming_107),
	.Hamming_108(Hamming_108),.Hamming_109(Hamming_109),.Hamming_110(Hamming_110),.Hamming_111(Hamming_111),
	.Hamming_112(Hamming_112),.Hamming_113(Hamming_113),.Hamming_114(Hamming_114),.Hamming_115(Hamming_115),
	.Hamming_116(Hamming_116),.Hamming_117(Hamming_117),.Hamming_118(Hamming_118),.Hamming_119(Hamming_119),
	.Hamming_120(Hamming_120),.Hamming_121(Hamming_121),.Hamming_122(Hamming_122),.Hamming_123(Hamming_123),
	.Hamming_124(Hamming_124),.Hamming_125(Hamming_125),.Hamming_126(Hamming_126),.Hamming_127(Hamming_127),
	.valid(valid)
);
	wire[6:0] cost0;
	wire[6:0] cost1;
	wire[6:0] cost2;
	wire[6:0] cost3;
	wire[6:0] cost4;
	wire[6:0] cost5;
	wire[6:0] cost6;
	wire[6:0] cost7;
	wire[6:0] cost8;
	wire[6:0] cost9;
	wire[6:0] cost10;
	wire[6:0] cost11;
	wire[6:0] cost12;
	wire[6:0] cost13;
	wire[6:0] cost14;
	wire[6:0] cost15;
	wire[6:0] cost16;
	wire[6:0] cost17;
	wire[6:0] cost18;
	wire[6:0] cost19;
	wire[6:0] cost20;
	wire[6:0] cost21;
	wire[6:0] cost22;
	wire[6:0] cost23;
	wire[6:0] cost24;
	wire[6:0] cost25;
	wire[6:0] cost26;
	wire[6:0] cost27;
	wire[6:0] cost28;
	wire[6:0] cost29;
	wire[6:0] cost30;
	wire[6:0] cost31;
	wire en;
	jqpart1 jqpart1_hhh(
	.rst(rst),
	.clk(clk),
	.clken(clken),
	.valid(valid),
	.ocost0(Hamming_0),
	.ocost1(Hamming_1),
	.ocost2(Hamming_2),
	.ocost3(Hamming_3),
	.ocost4(Hamming_4),
	.ocost5(Hamming_5),
	.ocost6(Hamming_6),
	.ocost7(Hamming_7),
	.ocost8(Hamming_8),
	.ocost9(Hamming_9),
	.ocost10(Hamming_10),
	.ocost11(Hamming_11),
	.ocost12(Hamming_12),
	.ocost13(Hamming_13),
	.ocost14(Hamming_14),
	.ocost15(Hamming_15),
	.ocost16(Hamming_16),
	.ocost17(Hamming_17),
	.ocost18(Hamming_18),
	.ocost19(Hamming_19),
	.ocost20(Hamming_20),
	.ocost21(Hamming_21),
	.ocost22(Hamming_22),
	.ocost23(Hamming_23),
	.ocost24(Hamming_24),
	.ocost25(Hamming_25),
	.ocost26(Hamming_26),
	.ocost27(Hamming_27),
	.ocost28(Hamming_28),
	.ocost29(Hamming_29),
	.ocost30(Hamming_30),
	.ocost31(Hamming_31),
	.ocost32(Hamming_32),
	.ocost33(Hamming_33),
	.ocost34(Hamming_34),
	.ocost35(Hamming_35),
	.ocost36(Hamming_36),
	.ocost37(Hamming_37),
	.ocost38(Hamming_38),
	.ocost39(Hamming_39),
	.ocost40(Hamming_40),
	.ocost41(Hamming_41),
	.ocost42(Hamming_42),
	.ocost43(Hamming_43),
	.ocost44(Hamming_44),
	.ocost45(Hamming_45),
	.ocost46(Hamming_46),
	.ocost47(Hamming_47),
	.ocost48(Hamming_48),
	.ocost49(Hamming_49),
	.ocost50(Hamming_50),
	.ocost51(Hamming_51),
	.ocost52(Hamming_52),
	.ocost53(Hamming_53),
	.ocost54(Hamming_54),
	.ocost55(Hamming_55),
	.ocost56(Hamming_56),
	.ocost57(Hamming_57),
	.ocost58(Hamming_58),
	.ocost59(Hamming_59),
	.ocost60(Hamming_60),
	.ocost61(Hamming_61),
	.ocost62(Hamming_62),
	.ocost63(Hamming_63),
	.ocost64(Hamming_64),
	.ocost65(Hamming_65),
	.ocost66(Hamming_66),
	.ocost67(Hamming_67),
	.ocost68(Hamming_68),
	.ocost69(Hamming_69),
	.ocost70(Hamming_70),
	.ocost71(Hamming_71),
	.ocost72(Hamming_72),
	.ocost73(Hamming_73),
	.ocost74(Hamming_74),
	.ocost75(Hamming_75),
	.ocost76(Hamming_76),
	.ocost77(Hamming_77),
	.ocost78(Hamming_78),
	.ocost79(Hamming_79),
	.ocost80(Hamming_80),
	.ocost81(Hamming_81),
	.ocost82(Hamming_82),
	.ocost83(Hamming_83),
	.ocost84(Hamming_84),
	.ocost85(Hamming_85),
	.ocost86(Hamming_86),
	.ocost87(Hamming_87),
	.ocost88(Hamming_88),
	.ocost89(Hamming_89),
	.ocost90(Hamming_90),
	.ocost91(Hamming_91),
	.ocost92(Hamming_92),
	.ocost93(Hamming_93),
	.ocost94(Hamming_94),
	.ocost95(Hamming_95),
	.ocost96(Hamming_96),
	.ocost97(Hamming_97),
	.ocost98(Hamming_98),
	.ocost99(Hamming_99),
	.ocost100(Hamming_100),
	.ocost101(Hamming_101),
	.ocost102(Hamming_102),
	.ocost103(Hamming_103),
	.ocost104(Hamming_104),
	.ocost105(Hamming_105),
	.ocost106(Hamming_106),
	.ocost107(Hamming_107),
	.ocost108(Hamming_108),
	.ocost109(Hamming_109),
	.ocost110(Hamming_110),
	.ocost111(Hamming_111),
	.ocost112(Hamming_112),
	.ocost113(Hamming_113),
	.ocost114(Hamming_114),
	.ocost115(Hamming_115),
	.ocost116(Hamming_116),
	.ocost117(Hamming_117),
	.ocost118(Hamming_118),
	.ocost119(Hamming_119),
	.ocost120(Hamming_120),
	.ocost121(Hamming_121),
	.ocost122(Hamming_122),
	.ocost123(Hamming_123),
	.ocost124(Hamming_124),
	.ocost125(Hamming_125),
	.ocost126(Hamming_126),
	.ocost127(Hamming_127),
	
	.cost0(cost0),
	.cost1(cost1),
	.cost2(cost2),
	.cost3(cost3),
	.cost4(cost4),
	.cost5(cost5),
	.cost6(cost6),
	.cost7(cost7),
	.cost8(cost8),
	.cost9(cost9),
	.cost10(cost10),
	.cost11(cost11),
	.cost12(cost12),
	.cost13(cost13),
	.cost14(cost14),
	.cost15(cost15),
	.cost16(cost16),
	.cost17(cost17),
	.cost18(cost18),
	.cost19(cost19),
	.cost20(cost20),
	.cost21(cost21),
	.cost22(cost22),
	.cost23(cost23),
	.cost24(cost24),
	.cost25(cost25),
	.cost26(cost26),
	.cost27(cost27),
	.cost28(cost28),
	.cost29(cost29),
	.cost30(cost30),
	.cost31(cost31),
	.en(en)
	);
	//output of agg2
	wire [6:0] min_0;
	wire [6:0] new2_L0_0;
	wire [6:0] new2_L0_1;
	wire [6:0] new2_L0_2;
	wire [6:0] new2_L0_3;
	wire [6:0] new2_L0_4;
	wire [6:0] new2_L0_5;
	wire [6:0] new2_L0_6;
	wire [6:0] new2_L0_7;
	wire [6:0] new2_L0_8;
	wire [6:0] new2_L0_9;
	wire [6:0] new2_L0_10;
	wire [6:0] new2_L0_11;
	wire [6:0] new2_L0_12;
	wire [6:0] new2_L0_13;
	wire [6:0] new2_L0_14;
	wire [6:0] new2_L0_15;
	wire [6:0] new2_L0_16;
	wire [6:0] new2_L0_17;
	wire [6:0] new2_L0_18;
	wire [6:0] new2_L0_19;
	wire [6:0] new2_L0_20;
	wire [6:0] new2_L0_21;
	wire [6:0] new2_L0_22;
	wire [6:0] new2_L0_23;
	wire [6:0] new2_L0_24;
	wire [6:0] new2_L0_25;
	wire [6:0] new2_L0_26;
	wire [6:0] new2_L0_27;
	wire [6:0] new2_L0_28;
	wire [6:0] new2_L0_29;
	wire [6:0] new2_L0_30;
	wire [6:0] new2_L0_31;
	
	wire [6:0] new2_L45_0;
	wire [6:0] new2_L45_1;
	wire [6:0] new2_L45_2;
	wire [6:0] new2_L45_3;
	wire [6:0] new2_L45_4;
	wire [6:0] new2_L45_5;
	wire [6:0] new2_L45_6;
	wire [6:0] new2_L45_7;
	wire [6:0] new2_L45_8;
	wire [6:0] new2_L45_9;
	wire [6:0] new2_L45_10;
	wire [6:0] new2_L45_11;
	wire [6:0] new2_L45_12;
	wire [6:0] new2_L45_13;
	wire [6:0] new2_L45_14;
	wire [6:0] new2_L45_15;
	wire [6:0] new2_L45_16;
	wire [6:0] new2_L45_17;
	wire [6:0] new2_L45_18;
	wire [6:0] new2_L45_19;
	wire [6:0] new2_L45_20;
	wire [6:0] new2_L45_21;
	wire [6:0] new2_L45_22;
	wire [6:0] new2_L45_23;
	wire [6:0] new2_L45_24;
	wire [6:0] new2_L45_25;
	wire [6:0] new2_L45_26;
	wire [6:0] new2_L45_27;
	wire [6:0] new2_L45_28;
	wire [6:0] new2_L45_29;
	wire [6:0] new2_L45_30;
	wire [6:0] new2_L45_31;

	wire [6:0] new2_L90_0;
	wire [6:0] new2_L90_1;
	wire [6:0] new2_L90_2;
	wire [6:0] new2_L90_3;
	wire [6:0] new2_L90_4;
	wire [6:0] new2_L90_5;
	wire [6:0] new2_L90_6;
	wire [6:0] new2_L90_7;
	wire [6:0] new2_L90_8;
	wire [6:0] new2_L90_9;
	wire [6:0] new2_L90_10;
	wire [6:0] new2_L90_11;
	wire [6:0] new2_L90_12;
	wire [6:0] new2_L90_13;
	wire [6:0] new2_L90_14;
	wire [6:0] new2_L90_15;
	wire [6:0] new2_L90_16;
	wire [6:0] new2_L90_17;
	wire [6:0] new2_L90_18;
	wire [6:0] new2_L90_19;
	wire [6:0] new2_L90_20;
	wire [6:0] new2_L90_21;
	wire [6:0] new2_L90_22;
	wire [6:0] new2_L90_23;
	wire [6:0] new2_L90_24;
	wire [6:0] new2_L90_25;
	wire [6:0] new2_L90_26;
	wire [6:0] new2_L90_27;
	wire [6:0] new2_L90_28;
	wire [6:0] new2_L90_29;
	wire [6:0] new2_L90_30;
	wire [6:0] new2_L90_31;

	wire [6:0] new2_L135_0;
	wire [6:0] new2_L135_1;
	wire [6:0] new2_L135_2;
	wire [6:0] new2_L135_3;
	wire [6:0] new2_L135_4;
	wire [6:0] new2_L135_5;
	wire [6:0] new2_L135_6;
	wire [6:0] new2_L135_7;
	wire [6:0] new2_L135_8;
	wire [6:0] new2_L135_9;
	wire [6:0] new2_L135_10;
	wire [6:0] new2_L135_11;
	wire [6:0] new2_L135_12;
	wire [6:0] new2_L135_13;
	wire [6:0] new2_L135_14;
	wire [6:0] new2_L135_15;
	wire [6:0] new2_L135_16;
	wire [6:0] new2_L135_17;
	wire [6:0] new2_L135_18;
	wire [6:0] new2_L135_19;
	wire [6:0] new2_L135_20;
	wire [6:0] new2_L135_21;
	wire [6:0] new2_L135_22;
	wire [6:0] new2_L135_23;
	wire [6:0] new2_L135_24;
	wire [6:0] new2_L135_25;
	wire [6:0] new2_L135_26;
	wire [6:0] new2_L135_27;
	wire [6:0] new2_L135_28;
	wire [6:0] new2_L135_29;
	wire [6:0] new2_L135_30;
	wire [6:0] new2_L135_31;
	
	reg en_first;
	wire [6:0] min_90;
	wire [6:0] min_45;
	wire en_agg3;
	wire [6:0] new4_L0_0;
	wire [6:0] new4_L0_1;
	wire [6:0] new4_L0_2;
	wire [6:0] new4_L0_3;
	wire [6:0] new4_L0_4;
	wire [6:0] new4_L0_5;
	wire [6:0] new4_L0_6;
	wire [6:0] new4_L0_7;
	wire [6:0] new4_L0_8;
	wire [6:0] new4_L0_9;
	wire [6:0] new4_L0_10;
	wire [6:0] new4_L0_11;
	wire [6:0] new4_L0_12;
	wire [6:0] new4_L0_13;
	wire [6:0] new4_L0_14;
	wire [6:0] new4_L0_15;
	wire [6:0] new4_L0_16;
	wire [6:0] new4_L0_17;
	wire [6:0] new4_L0_18;
	wire [6:0] new4_L0_19;
	wire [6:0] new4_L0_20;
	wire [6:0] new4_L0_21;
	wire [6:0] new4_L0_22;
	wire [6:0] new4_L0_23;
	wire [6:0] new4_L0_24;
	wire [6:0] new4_L0_25;
	wire [6:0] new4_L0_26;
	wire [6:0] new4_L0_27;
	wire [6:0] new4_L0_28;
	wire [6:0] new4_L0_29;
	wire [6:0] new4_L0_30;
	wire [6:0] new4_L0_31;
	
	wire [6:0] new4_L45_0;
	wire [6:0] new4_L45_1;
	wire [6:0] new4_L45_2;
	wire [6:0] new4_L45_3;
	wire [6:0] new4_L45_4;
	wire [6:0] new4_L45_5;
	wire [6:0] new4_L45_6;
	wire [6:0] new4_L45_7;
	wire [6:0] new4_L45_8;
	wire [6:0] new4_L45_9;
	wire [6:0] new4_L45_10;
	wire [6:0] new4_L45_11;
	wire [6:0] new4_L45_12;
	wire [6:0] new4_L45_13;
	wire [6:0] new4_L45_14;
	wire [6:0] new4_L45_15;
	wire [6:0] new4_L45_16;
	wire [6:0] new4_L45_17;
	wire [6:0] new4_L45_18;
	wire [6:0] new4_L45_19;
	wire [6:0] new4_L45_20;
	wire [6:0] new4_L45_21;
	wire [6:0] new4_L45_22;
	wire [6:0] new4_L45_23;
	wire [6:0] new4_L45_24;
	wire [6:0] new4_L45_25;
	wire [6:0] new4_L45_26;
	wire [6:0] new4_L45_27;
	wire [6:0] new4_L45_28;
	wire [6:0] new4_L45_29;
	wire [6:0] new4_L45_30;
	wire [6:0] new4_L45_31;

	wire [6:0] new4_L90_0;
	wire [6:0] new4_L90_1;
	wire [6:0] new4_L90_2;
	wire [6:0] new4_L90_3;
	wire [6:0] new4_L90_4;
	wire [6:0] new4_L90_5;
	wire [6:0] new4_L90_6;
	wire [6:0] new4_L90_7;
	wire [6:0] new4_L90_8;
	wire [6:0] new4_L90_9;
	wire [6:0] new4_L90_10;
	wire [6:0] new4_L90_11;
	wire [6:0] new4_L90_12;
	wire [6:0] new4_L90_13;
	wire [6:0] new4_L90_14;
	wire [6:0] new4_L90_15;
	wire [6:0] new4_L90_16;
	wire [6:0] new4_L90_17;
	wire [6:0] new4_L90_18;
	wire [6:0] new4_L90_19;
	wire [6:0] new4_L90_20;
	wire [6:0] new4_L90_21;
	wire [6:0] new4_L90_22;
	wire [6:0] new4_L90_23;
	wire [6:0] new4_L90_24;
	wire [6:0] new4_L90_25;
	wire [6:0] new4_L90_26;
	wire [6:0] new4_L90_27;
	wire [6:0] new4_L90_28;
	wire [6:0] new4_L90_29;
	wire [6:0] new4_L90_30;
	wire [6:0] new4_L90_31;

	wire [6:0] new4_L135_0;
	wire [6:0] new4_L135_1;
	wire [6:0] new4_L135_2;
	wire [6:0] new4_L135_3;
	wire [6:0] new4_L135_4;
	wire [6:0] new4_L135_5;
	wire [6:0] new4_L135_6;
	wire [6:0] new4_L135_7;
	wire [6:0] new4_L135_8;
	wire [6:0] new4_L135_9;
	wire [6:0] new4_L135_10;
	wire [6:0] new4_L135_11;
	wire [6:0] new4_L135_12;
	wire [6:0] new4_L135_13;
	wire [6:0] new4_L135_14;
	wire [6:0] new4_L135_15;
	wire [6:0] new4_L135_16;
	wire [6:0] new4_L135_17;
	wire [6:0] new4_L135_18;
	wire [6:0] new4_L135_19;
	wire [6:0] new4_L135_20;
	wire [6:0] new4_L135_21;
	wire [6:0] new4_L135_22;
	wire [6:0] new4_L135_23;
	wire [6:0] new4_L135_24;
	wire [6:0] new4_L135_25;
	wire [6:0] new4_L135_26;
	wire [6:0] new4_L135_27;
	wire [6:0] new4_L135_28;
	wire [6:0] new4_L135_29;
	wire [6:0] new4_L135_30;
	wire [6:0] new4_L135_31;
	wire [6:0] min_135;
	
	//agg3
	wire en_disp;
	wire [6:0] new3_L0_0;
	wire [6:0] new3_L0_1;
	wire [6:0] new3_L0_2;
	wire [6:0] new3_L0_3;
	wire [6:0] new3_L0_4;
	wire [6:0] new3_L0_5;
	wire [6:0] new3_L0_6;
	wire [6:0] new3_L0_7;
	wire [6:0] new3_L0_8;
	wire [6:0] new3_L0_9;
	wire [6:0] new3_L0_10;
	wire [6:0] new3_L0_11;
	wire [6:0] new3_L0_12;
	wire [6:0] new3_L0_13;
	wire [6:0] new3_L0_14;
	wire [6:0] new3_L0_15;
	wire [6:0] new3_L0_16;
	wire [6:0] new3_L0_17;
	wire [6:0] new3_L0_18;
	wire [6:0] new3_L0_19;
	wire [6:0] new3_L0_20;
	wire [6:0] new3_L0_21;
	wire [6:0] new3_L0_22;
	wire [6:0] new3_L0_23;
	wire [6:0] new3_L0_24;
	wire [6:0] new3_L0_25;
	wire [6:0] new3_L0_26;
	wire [6:0] new3_L0_27;
	wire [6:0] new3_L0_28;
	wire [6:0] new3_L0_29;
	wire [6:0] new3_L0_30;
	wire [6:0] new3_L0_31;
	
	
	wire [6:0] new3_L45_0;
	wire [6:0] new3_L45_1;
	wire [6:0] new3_L45_2;
	wire [6:0] new3_L45_3;
	wire [6:0] new3_L45_4;
	wire [6:0] new3_L45_5;
	wire [6:0] new3_L45_6;
	wire [6:0] new3_L45_7;
	wire [6:0] new3_L45_8;
	wire [6:0] new3_L45_9;
	wire [6:0] new3_L45_10;
	wire [6:0] new3_L45_11;
	wire [6:0] new3_L45_12;
	wire [6:0] new3_L45_13;
	wire [6:0] new3_L45_14;
	wire [6:0] new3_L45_15;
	wire [6:0] new3_L45_16;
	wire [6:0] new3_L45_17;
	wire [6:0] new3_L45_18;
	wire [6:0] new3_L45_19;
	wire [6:0] new3_L45_20;
	wire [6:0] new3_L45_21;
	wire [6:0] new3_L45_22;
	wire [6:0] new3_L45_23;
	wire [6:0] new3_L45_24;
	wire [6:0] new3_L45_25;
	wire [6:0] new3_L45_26;
	wire [6:0] new3_L45_27;
	wire [6:0] new3_L45_28;
	wire [6:0] new3_L45_29;
	wire [6:0] new3_L45_30;
	wire [6:0] new3_L45_31;


	wire [6:0] new3_L90_0;
	wire [6:0] new3_L90_1;
	wire [6:0] new3_L90_2;
	wire [6:0] new3_L90_3;
	wire [6:0] new3_L90_4;
	wire [6:0] new3_L90_5;
	wire [6:0] new3_L90_6;
	wire [6:0] new3_L90_7;
	wire [6:0] new3_L90_8;
	wire [6:0] new3_L90_9;
	wire [6:0] new3_L90_10;
	wire [6:0] new3_L90_11;
	wire [6:0] new3_L90_12;
	wire [6:0] new3_L90_13;
	wire [6:0] new3_L90_14;
	wire [6:0] new3_L90_15;
	wire [6:0] new3_L90_16;
	wire [6:0] new3_L90_17;
	wire [6:0] new3_L90_18;
	wire [6:0] new3_L90_19;
	wire [6:0] new3_L90_20;
	wire [6:0] new3_L90_21;
	wire [6:0] new3_L90_22;
	wire [6:0] new3_L90_23;
	wire [6:0] new3_L90_24;
	wire [6:0] new3_L90_25;
	wire [6:0] new3_L90_26;
	wire [6:0] new3_L90_27;
	wire [6:0] new3_L90_28;
	wire [6:0] new3_L90_29;
	wire [6:0] new3_L90_30;
	wire [6:0] new3_L90_31;

	
	wire [6:0] new3_L135_0;
	wire [6:0] new3_L135_1;
	wire [6:0] new3_L135_2;
	wire [6:0] new3_L135_3;
	wire [6:0] new3_L135_4;
	wire [6:0] new3_L135_5;
	wire [6:0] new3_L135_6;
	wire [6:0] new3_L135_7;
	wire [6:0] new3_L135_8;
	wire [6:0] new3_L135_9;
	wire [6:0] new3_L135_10;
	wire [6:0] new3_L135_11;
	wire [6:0] new3_L135_12;
	wire [6:0] new3_L135_13;
	wire [6:0] new3_L135_14;
	wire [6:0] new3_L135_15;
	wire [6:0] new3_L135_16;
	wire [6:0] new3_L135_17;
	wire [6:0] new3_L135_18;
	wire [6:0] new3_L135_19;
	wire [6:0] new3_L135_20;
	wire [6:0] new3_L135_21;
	wire [6:0] new3_L135_22;
	wire [6:0] new3_L135_23;
	wire [6:0] new3_L135_24;
	wire [6:0] new3_L135_25;
	wire [6:0] new3_L135_26;
	wire [6:0] new3_L135_27;
	wire [6:0] new3_L135_28;
	wire [6:0] new3_L135_29;
	wire [6:0] new3_L135_30;
	wire [6:0] new3_L135_31;

	wire[6:0] L0_0;
	wire[6:0] L0_1;
	wire[6:0] L0_2;
	wire[6:0] L0_3;
	wire[6:0] L0_4;
	wire[6:0] L0_5;
	wire[6:0] L0_6;
	wire[6:0] L0_7;
	wire[6:0] L0_8;
	wire[6:0] L0_9;
	wire[6:0] L0_10;
	wire[6:0] L0_11;
	wire[6:0] L0_12;
	wire[6:0] L0_13;
	wire[6:0] L0_14;
	wire[6:0] L0_15;
	wire[6:0] L0_16;
	wire[6:0] L0_17;
	wire[6:0] L0_18;
	wire[6:0] L0_19;
	wire[6:0] L0_20;
	wire[6:0] L0_21;
	wire[6:0] L0_22;
	wire[6:0] L0_23;
	wire[6:0] L0_24;
	wire[6:0] L0_25;
	wire[6:0] L0_26;
	wire[6:0] L0_27;
	wire[6:0] L0_28;
	wire[6:0] L0_29;
	wire[6:0] L0_30;
	wire[6:0] L0_31;
	
	wire[6:0] L45_0;
	wire[6:0] L45_1;
	wire[6:0] L45_2;
	wire[6:0] L45_3;
	wire[6:0] L45_4;
	wire[6:0] L45_5;
	wire[6:0] L45_6;
	wire[6:0] L45_7;
	wire[6:0] L45_8;
	wire[6:0] L45_9;
	wire[6:0] L45_10;
	wire[6:0] L45_11;
	wire[6:0] L45_12;
	wire[6:0] L45_13;
	wire[6:0] L45_14;
	wire[6:0] L45_15;
	wire[6:0] L45_16;
	wire[6:0] L45_17;
	wire[6:0] L45_18;
	wire[6:0] L45_19;
	wire[6:0] L45_20;
	wire[6:0] L45_21;
	wire[6:0] L45_22;
	wire[6:0] L45_23;
	wire[6:0] L45_24;
	wire[6:0] L45_25;
	wire[6:0] L45_26;
	wire[6:0] L45_27;
	wire[6:0] L45_28;
	wire[6:0] L45_29;
	wire[6:0] L45_30;
	wire[6:0] L45_31;
	
	wire[6:0] L90_0;
	wire[6:0] L90_1;
	wire[6:0] L90_2;
	wire[6:0] L90_3;
	wire[6:0] L90_4;
	wire[6:0] L90_5;
	wire[6:0] L90_6;
	wire[6:0] L90_7;
	wire[6:0] L90_8;
	wire[6:0] L90_9;
	wire[6:0] L90_10;
	wire[6:0] L90_11;
	wire[6:0] L90_12;
	wire[6:0] L90_13;
	wire[6:0] L90_14;
	wire[6:0] L90_15;
	wire[6:0] L90_16;
	wire[6:0] L90_17;
	wire[6:0] L90_18;
	wire[6:0] L90_19;
	wire[6:0] L90_20;
	wire[6:0] L90_21;
	wire[6:0] L90_22;
	wire[6:0] L90_23;
	wire[6:0] L90_24;
	wire[6:0] L90_25;
	wire[6:0] L90_26;
	wire[6:0] L90_27;
	wire[6:0] L90_28;
	wire[6:0] L90_29;
	wire[6:0] L90_30;
	wire[6:0] L90_31;
	
	wire[6:0] L135_0;
	wire[6:0] L135_1;
	wire[6:0] L135_2;
	wire[6:0] L135_3;
	wire[6:0] L135_4;
	wire[6:0] L135_5;
	wire[6:0] L135_6;
	wire[6:0] L135_7;
	wire[6:0] L135_8;
	wire[6:0] L135_9;
	wire[6:0] L135_10;
	wire[6:0] L135_11;
	wire[6:0] L135_12;
	wire[6:0] L135_13;
	wire[6:0] L135_14;
	wire[6:0] L135_15;
	wire[6:0] L135_16;
	wire[6:0] L135_17;
	wire[6:0] L135_18;
	wire[6:0] L135_19;
	wire[6:0] L135_20;
	wire[6:0] L135_21;
	wire[6:0] L135_22;
	wire[6:0] L135_23;
	wire[6:0] L135_24;
	wire[6:0] L135_25;
	wire[6:0] L135_26;
	wire[6:0] L135_27;
	wire[6:0] L135_28;
	wire[6:0] L135_29;
	wire[6:0] L135_30;
	wire[6:0] L135_31;
	wire valid_1;
	
	agg_first agg_first_inst(
	.clk(clk),
	.rst(rst),
	.clken(clken),
	.valid(valid),
	.valid_1(valid_1),
	.cost0_0(cost0),
	.cost0_1(cost1),
	.cost0_2(cost2),
	.cost0_3(cost3),
	.cost0_4(cost4),
	.cost0_5(cost5),
	.cost0_6(cost6),
	.cost0_7(cost7),
	.cost0_8(cost8),
	.cost0_9(cost9),
	.cost0_10(cost10),
	.cost0_11(cost11),
	.cost0_12(cost12),
	.cost0_13(cost13),
	.cost0_14(cost14),
	.cost0_15(cost15),
	.cost0_16(cost16),
	.cost0_17(cost17),
	.cost0_18(cost18),
	.cost0_19(cost19),
	.cost0_20(cost20),
	.cost0_21(cost21),
	.cost0_22(cost22),
	.cost0_23(cost23),
	.cost0_24(cost24),
	.cost0_25(cost25),
	.cost0_26(cost26),
	.cost0_27(cost27),
	.cost0_28(cost28),
	.cost0_29(cost29),
	.cost0_30(cost30),
	.cost0_31(cost31),
	
	.cost45_0(cost0),
	.cost45_1(cost1),
	.cost45_2(cost2),
	.cost45_3(cost3),
	.cost45_4(cost4),
	.cost45_5(cost5),
	.cost45_6(cost6),
	.cost45_7(cost7),
	.cost45_8(cost8),
	.cost45_9(cost9),
	.cost45_10(cost10),
	.cost45_11(cost11),
	.cost45_12(cost12),
	.cost45_13(cost13),
	.cost45_14(cost14),
	.cost45_15(cost15),
	.cost45_16(cost16),
	.cost45_17(cost17),
	.cost45_18(cost18),
	.cost45_19(cost19),
	.cost45_20(cost20),
	.cost45_21(cost21),
	.cost45_22(cost22),
	.cost45_23(cost23),
	.cost45_24(cost24),
	.cost45_25(cost25),
	.cost45_26(cost26),
	.cost45_27(cost27),
	.cost45_28(cost28),
	.cost45_29(cost29),
	.cost45_30(cost30),
	.cost45_31(cost31),
	
	.cost90_0(cost0),
	.cost90_1(cost1),
	.cost90_2(cost2),
	.cost90_3(cost3),
	.cost90_4(cost4),
	.cost90_5(cost5),
	.cost90_6(cost6),
	.cost90_7(cost7),
	.cost90_8(cost8),
	.cost90_9(cost9),
	.cost90_10(cost10),
	.cost90_11(cost11),
	.cost90_12(cost12),
	.cost90_13(cost13),
	.cost90_14(cost14),
	.cost90_15(cost15),
	.cost90_16(cost16),
	.cost90_17(cost17),
	.cost90_18(cost18),
	.cost90_19(cost19),
	.cost90_20(cost20),
	.cost90_21(cost21),
	.cost90_22(cost22),
	.cost90_23(cost23),
	.cost90_24(cost24),
	.cost90_25(cost25),
	.cost90_26(cost26),
	.cost90_27(cost27),
	.cost90_28(cost28),
	.cost90_29(cost29),
	.cost90_30(cost30),
	.cost90_31(cost31),
	
	.cost135_0(cost0),
	.cost135_1(cost1),
	.cost135_2(cost2),
	.cost135_3(cost3),
	.cost135_4(cost4),
	.cost135_5(cost5),
	.cost135_6(cost6),
	.cost135_7(cost7),
	.cost135_8(cost8),
	.cost135_9(cost9),
	.cost135_10(cost10),
	.cost135_11(cost11),
	.cost135_12(cost12),
	.cost135_13(cost13),
	.cost135_14(cost14),
	.cost135_15(cost15),
	.cost135_16(cost16),
	.cost135_17(cost17),
	.cost135_18(cost18),
	.cost135_19(cost19),
	.cost135_20(cost20),
	.cost135_21(cost21),
	.cost135_22(cost22),
	.cost135_23(cost23),
	.cost135_24(cost24),
	.cost135_25(cost25),
	.cost135_26(cost26),
	.cost135_27(cost27),
	.cost135_28(cost28),
	.cost135_29(cost29),
	.cost135_30(cost30),
	.cost135_31(cost31),
	
	.L0_0(L0_0),
	.L0_1(L0_1),
	.L0_2(L0_2),
	.L0_3(L0_3),
	.L0_4(L0_4),
	.L0_5(L0_5),
	.L0_6(L0_6),
	.L0_7(L0_7),
	.L0_8(L0_8),
	.L0_9(L0_9),
	.L0_10(L0_10),
	.L0_11(L0_11),
	.L0_12(L0_12),
	.L0_13(L0_13),
	.L0_14(L0_14),
	.L0_15(L0_15),
	.L0_16(L0_16),
	.L0_17(L0_17),
	.L0_18(L0_18),
	.L0_19(L0_19),
	.L0_20(L0_20),
	.L0_21(L0_21),
	.L0_22(L0_22),
	.L0_23(L0_23),
	.L0_24(L0_24),
	.L0_25(L0_25),
	.L0_26(L0_26),
	.L0_27(L0_27),
	.L0_28(L0_28),
	.L0_29(L0_29),
	.L0_30(L0_30),
	.L0_31(L0_31),
	
	.L45_0(L45_0),
	.L45_1(L45_1),
	.L45_2(L45_2),
	.L45_3(L45_3),
	.L45_4(L45_4),
	.L45_5(L45_5),
	.L45_6(L45_6),
	.L45_7(L45_7),
	.L45_8(L45_8),
	.L45_9(L45_9),
	.L45_10(L45_10),
	.L45_11(L45_11),
	.L45_12(L45_12),
	.L45_13(L45_13),
	.L45_14(L45_14),
	.L45_15(L45_15),
	.L45_16(L45_16),
	.L45_17(L45_17),
	.L45_18(L45_18),
	.L45_19(L45_19),
	.L45_20(L45_20),
	.L45_21(L45_21),
	.L45_22(L45_22),
	.L45_23(L45_23),
	.L45_24(L45_24),
	.L45_25(L45_25),
	.L45_26(L45_26),
	.L45_27(L45_27),
	.L45_28(L45_28),
	.L45_29(L45_29),
	.L45_30(L45_30),
	.L45_31(L45_31),
	
	.L90_0(L90_0),
	.L90_1(L90_1),
	.L90_2(L90_2),
	.L90_3(L90_3),
	.L90_4(L90_4),
	.L90_5(L90_5),
	.L90_6(L90_6),
	.L90_7(L90_7),
	.L90_8(L90_8),
	.L90_9(L90_9),
	.L90_10(L90_10),
	.L90_11(L90_11),
	.L90_12(L90_12),
	.L90_13(L90_13),
	.L90_14(L90_14),
	.L90_15(L90_15),
	.L90_16(L90_16),
	.L90_17(L90_17),
	.L90_18(L90_18),
	.L90_19(L90_19),
	.L90_20(L90_20),
	.L90_21(L90_21),
	.L90_22(L90_22),
	.L90_23(L90_23),
	.L90_24(L90_24),
	.L90_25(L90_25),
	.L90_26(L90_26),
	.L90_27(L90_27),
	.L90_28(L90_28),
	.L90_29(L90_29),
	.L90_30(L90_30),
	.L90_31(L90_31),
	
	.L135_0(L135_0),
	.L135_1(L135_1),
	.L135_2(L135_2),
	.L135_3(L135_3),
	.L135_4(L135_4),
	.L135_5(L135_5),
	.L135_6(L135_6),
	.L135_7(L135_7),
	.L135_8(L135_8),
	.L135_9(L135_9),
	.L135_10(L135_10),
	.L135_11(L135_11),
	.L135_12(L135_12),
	.L135_13(L135_13),
	.L135_14(L135_14),
	.L135_15(L135_15),
	.L135_16(L135_16),
	.L135_17(L135_17),
	.L135_18(L135_18),
	.L135_19(L135_19),
	.L135_20(L135_20),
	.L135_21(L135_21),
	.L135_22(L135_22),
	.L135_23(L135_23),
	.L135_24(L135_24),
	.L135_25(L135_25),
	.L135_26(L135_26),
	.L135_27(L135_27),
	.L135_28(L135_28),
	.L135_29(L135_29),
	.L135_30(L135_30),
	.L135_31(L135_31)
	);

	wire[6:0] L_2_0_0;
	wire[6:0] L_2_0_1;
	wire[6:0] L_2_0_2;
	wire[6:0] L_2_0_3;
	wire[6:0] L_2_0_4;
	wire[6:0] L_2_0_5;
	wire[6:0] L_2_0_6;
	wire[6:0] L_2_0_7;
	wire[6:0] L_2_0_8;
	wire[6:0] L_2_0_9;
	wire[6:0] L_2_0_10;
	wire[6:0] L_2_0_11;
	wire[6:0] L_2_0_12;
	wire[6:0] L_2_0_13;
	wire[6:0] L_2_0_14;
	wire[6:0] L_2_0_15;
	wire[6:0] L_2_0_16;
	wire[6:0] L_2_0_17;
	wire[6:0] L_2_0_18;
	wire[6:0] L_2_0_19;
	wire[6:0] L_2_0_20;
	wire[6:0] L_2_0_21;
	wire[6:0] L_2_0_22;
	wire[6:0] L_2_0_23;
	wire[6:0] L_2_0_24;
	wire[6:0] L_2_0_25;
	wire[6:0] L_2_0_26;
	wire[6:0] L_2_0_27;
	wire[6:0] L_2_0_28;
	wire[6:0] L_2_0_29;
	wire[6:0] L_2_0_30;
	wire[6:0] L_2_0_31;
	
	wire[6:0] L_2_45_0;
	wire[6:0] L_2_45_1;
	wire[6:0] L_2_45_2;
	wire[6:0] L_2_45_3;
	wire[6:0] L_2_45_4;
	wire[6:0] L_2_45_5;
	wire[6:0] L_2_45_6;
	wire[6:0] L_2_45_7;
	wire[6:0] L_2_45_8;
	wire[6:0] L_2_45_9;
	wire[6:0] L_2_45_10;
	wire[6:0] L_2_45_11;
	wire[6:0] L_2_45_12;
	wire[6:0] L_2_45_13;
	wire[6:0] L_2_45_14;
	wire[6:0] L_2_45_15;
	wire[6:0] L_2_45_16;
	wire[6:0] L_2_45_17;
	wire[6:0] L_2_45_18;
	wire[6:0] L_2_45_19;
	wire[6:0] L_2_45_20;
	wire[6:0] L_2_45_21;
	wire[6:0] L_2_45_22;
	wire[6:0] L_2_45_23;
	wire[6:0] L_2_45_24;
	wire[6:0] L_2_45_25;
	wire[6:0] L_2_45_26;
	wire[6:0] L_2_45_27;
	wire[6:0] L_2_45_28;
	wire[6:0] L_2_45_29;
	wire[6:0] L_2_45_30;
	wire[6:0] L_2_45_31;
	
	wire[6:0] L_2_90_0;
	wire[6:0] L_2_90_1;
	wire[6:0] L_2_90_2;
	wire[6:0] L_2_90_3;
	wire[6:0] L_2_90_4;
	wire[6:0] L_2_90_5;
	wire[6:0] L_2_90_6;
	wire[6:0] L_2_90_7;
	wire[6:0] L_2_90_8;
	wire[6:0] L_2_90_9;
	wire[6:0] L_2_90_10;
	wire[6:0] L_2_90_11;
	wire[6:0] L_2_90_12;
	wire[6:0] L_2_90_13;
	wire[6:0] L_2_90_14;
	wire[6:0] L_2_90_15;
	wire[6:0] L_2_90_16;
	wire[6:0] L_2_90_17;
	wire[6:0] L_2_90_18;
	wire[6:0] L_2_90_19;
	wire[6:0] L_2_90_20;
	wire[6:0] L_2_90_21;
	wire[6:0] L_2_90_22;
	wire[6:0] L_2_90_23;
	wire[6:0] L_2_90_24;
	wire[6:0] L_2_90_25;
	wire[6:0] L_2_90_26;
	wire[6:0] L_2_90_27;
	wire[6:0] L_2_90_28;
	wire[6:0] L_2_90_29;
	wire[6:0] L_2_90_30;
	wire[6:0] L_2_90_31;
	
	wire[6:0] L_2_135_0;
	wire[6:0] L_2_135_1;
	wire[6:0] L_2_135_2;
	wire[6:0] L_2_135_3;
	wire[6:0] L_2_135_4;
	wire[6:0] L_2_135_5;
	wire[6:0] L_2_135_6;
	wire[6:0] L_2_135_7;
	wire[6:0] L_2_135_8;
	wire[6:0] L_2_135_9;
	wire[6:0] L_2_135_10;
	wire[6:0] L_2_135_11;
	wire[6:0] L_2_135_12;
	wire[6:0] L_2_135_13;
	wire[6:0] L_2_135_14;
	wire[6:0] L_2_135_15;
	wire[6:0] L_2_135_16;
	wire[6:0] L_2_135_17;
	wire[6:0] L_2_135_18;
	wire[6:0] L_2_135_19;
	wire[6:0] L_2_135_20;
	wire[6:0] L_2_135_21;
	wire[6:0] L_2_135_22;
	wire[6:0] L_2_135_23;
	wire[6:0] L_2_135_24;
	wire[6:0] L_2_135_25;
	wire[6:0] L_2_135_26;
	wire[6:0] L_2_135_27;
	wire[6:0] L_2_135_28;
	wire[6:0] L_2_135_29;
	wire[6:0] L_2_135_30;
	wire[6:0] L_2_135_31;
	wire valid_2;
	agg_second agg_second_inst(
	.clk(clk),
	.rst(rst),
	.clken(clken),
	.valid_1(valid_1),
	.valid_2(valid_2),
	.cost0_0(L0_0),
	.cost0_1(L0_1),
	.cost0_2(L0_2),
	.cost0_3(L0_3),
	.cost0_4(L0_4),
	.cost0_5(L0_5),
	.cost0_6(L0_6),
	.cost0_7(L0_7),
	.cost0_8(L0_8),
	.cost0_9(L0_9),
	.cost0_10(L0_10),
	.cost0_11(L0_11),
	.cost0_12(L0_12),
	.cost0_13(L0_13),
	.cost0_14(L0_14),
	.cost0_15(L0_15),
	.cost0_16(L0_16),
	.cost0_17(L0_17),
	.cost0_18(L0_18),
	.cost0_19(L0_19),
	.cost0_20(L0_20),
	.cost0_21(L0_21),
	.cost0_22(L0_22),
	.cost0_23(L0_23),
	.cost0_24(L0_24),
	.cost0_25(L0_25),
	.cost0_26(L0_26),
	.cost0_27(L0_27),
	.cost0_28(L0_28),
	.cost0_29(L0_29),
	.cost0_30(L0_30),
	.cost0_31(L0_31),
	
	.cost45_0(L45_0),
	.cost45_1(L45_1),
	.cost45_2(L45_2),
	.cost45_3(L45_3),
	.cost45_4(L45_4),
	.cost45_5(L45_5),
	.cost45_6(L45_6),
	.cost45_7(L45_7),
	.cost45_8(L45_8),
	.cost45_9(L45_9),
	.cost45_10(L45_10),
	.cost45_11(L45_11),
	.cost45_12(L45_12),
	.cost45_13(L45_13),
	.cost45_14(L45_14),
	.cost45_15(L45_15),
	.cost45_16(L45_16),
	.cost45_17(L45_17),
	.cost45_18(L45_18),
	.cost45_19(L45_19),
	.cost45_20(L45_20),
	.cost45_21(L45_21),
	.cost45_22(L45_22),
	.cost45_23(L45_23),
	.cost45_24(L45_24),
	.cost45_25(L45_25),
	.cost45_26(L45_26),
	.cost45_27(L45_27),
	.cost45_28(L45_28),
	.cost45_29(L45_29),
	.cost45_30(L45_30),
	.cost45_31(L45_31),
	
	.cost90_0(L90_0),
	.cost90_1(L90_1),
	.cost90_2(L90_2),
	.cost90_3(L90_3),
	.cost90_4(L90_4),
	.cost90_5(L90_5),
	.cost90_6(L90_6),
	.cost90_7(L90_7),
	.cost90_8(L90_8),
	.cost90_9(L90_9),
	.cost90_10(L90_10),
	.cost90_11(L90_11),
	.cost90_12(L90_12),
	.cost90_13(L90_13),
	.cost90_14(L90_14),
	.cost90_15(L90_15),
	.cost90_16(L90_16),
	.cost90_17(L90_17),
	.cost90_18(L90_18),
	.cost90_19(L90_19),
	.cost90_20(L90_20),
	.cost90_21(L90_21),
	.cost90_22(L90_22),
	.cost90_23(L90_23),
	.cost90_24(L90_24),
	.cost90_25(L90_25),
	.cost90_26(L90_26),
	.cost90_27(L90_27),
	.cost90_28(L90_28),
	.cost90_29(L90_29),
	.cost90_30(L90_30),
	.cost90_31(L90_31),
	
	.cost135_0(L135_0),
	.cost135_1(L135_1),
	.cost135_2(L135_2),
	.cost135_3(L135_3),
	.cost135_4(L135_4),
	.cost135_5(L135_5),
	.cost135_6(L135_6),
	.cost135_7(L135_7),
	.cost135_8(L135_8),
	.cost135_9(L135_9),
	.cost135_10(L135_10),
	.cost135_11(L135_11),
	.cost135_12(L135_12),
	.cost135_13(L135_13),
	.cost135_14(L135_14),
	.cost135_15(L135_15),
	.cost135_16(L135_16),
	.cost135_17(L135_17),
	.cost135_18(L135_18),
	.cost135_19(L135_19),
	.cost135_20(L135_20),
	.cost135_21(L135_21),
	.cost135_22(L135_22),
	.cost135_23(L135_23),
	.cost135_24(L135_24),
	.cost135_25(L135_25),
	.cost135_26(L135_26),
	.cost135_27(L135_27),
	.cost135_28(L135_28),
	.cost135_29(L135_29),
	.cost135_30(L135_30),
	.cost135_31(L135_31),
	
	.L0_0(L_2_0_0),
	.L0_1(L_2_0_1),
	.L0_2(L_2_0_2),
	.L0_3(L_2_0_3),
	.L0_4(L_2_0_4),
	.L0_5(L_2_0_5),
	.L0_6(L_2_0_6),
	.L0_7(L_2_0_7),
	.L0_8(L_2_0_8),
	.L0_9(L_2_0_9),
	.L0_10(L_2_0_10),
	.L0_11(L_2_0_11),
	.L0_12(L_2_0_12),
	.L0_13(L_2_0_13),
	.L0_14(L_2_0_14),
	.L0_15(L_2_0_15),
	.L0_16(L_2_0_16),
	.L0_17(L_2_0_17),
	.L0_18(L_2_0_18),
	.L0_19(L_2_0_19),
	.L0_20(L_2_0_20),
	.L0_21(L_2_0_21),
	.L0_22(L_2_0_22),
	.L0_23(L_2_0_23),
	.L0_24(L_2_0_24),
	.L0_25(L_2_0_25),
	.L0_26(L_2_0_26),
	.L0_27(L_2_0_27),
	.L0_28(L_2_0_28),
	.L0_29(L_2_0_29),
	.L0_30(L_2_0_30),
	.L0_31(L_2_0_31),
	
	.L45_0(L_2_45_0),
	.L45_1(L_2_45_1),
	.L45_2(L_2_45_2),
	.L45_3(L_2_45_3),
	.L45_4(L_2_45_4),
	.L45_5(L_2_45_5),
	.L45_6(L_2_45_6),
	.L45_7(L_2_45_7),
	.L45_8(L_2_45_8),
	.L45_9(L_2_45_9),
	.L45_10(L_2_45_10),
	.L45_11(L_2_45_11),
	.L45_12(L_2_45_12),
	.L45_13(L_2_45_13),
	.L45_14(L_2_45_14),
	.L45_15(L_2_45_15),
	.L45_16(L_2_45_16),
	.L45_17(L_2_45_17),
	.L45_18(L_2_45_18),
	.L45_19(L_2_45_19),
	.L45_20(L_2_45_20),
	.L45_21(L_2_45_21),
	.L45_22(L_2_45_22),
	.L45_23(L_2_45_23),
	.L45_24(L_2_45_24),
	.L45_25(L_2_45_25),
	.L45_26(L_2_45_26),
	.L45_27(L_2_45_27),
	.L45_28(L_2_45_28),
	.L45_29(L_2_45_29),
	.L45_30(L_2_45_30),
	.L45_31(L_2_45_31),
	
	.L90_0(L_2_90_0),
	.L90_1(L_2_90_1),
	.L90_2(L_2_90_2),
	.L90_3(L_2_90_3),
	.L90_4(L_2_90_4),
	.L90_5(L_2_90_5),
	.L90_6(L_2_90_6),
	.L90_7(L_2_90_7),
	.L90_8(L_2_90_8),
	.L90_9(L_2_90_9),
	.L90_10(L_2_90_10),
	.L90_11(L_2_90_11),
	.L90_12(L_2_90_12),
	.L90_13(L_2_90_13),
	.L90_14(L_2_90_14),
	.L90_15(L_2_90_15),
	.L90_16(L_2_90_16),
	.L90_17(L_2_90_17),
	.L90_18(L_2_90_18),
	.L90_19(L_2_90_19),
	.L90_20(L_2_90_20),
	.L90_21(L_2_90_21),
	.L90_22(L_2_90_22),
	.L90_23(L_2_90_23),
	.L90_24(L_2_90_24),
	.L90_25(L_2_90_25),
	.L90_26(L_2_90_26),
	.L90_27(L_2_90_27),
	.L90_28(L_2_90_28),
	.L90_29(L_2_90_29),
	.L90_30(L_2_90_30),
	.L90_31(L_2_90_31),
	
	
	
	.L135_0(L_2_135_0),
	.L135_1(L_2_135_1),
	.L135_2(L_2_135_2),
	.L135_3(L_2_135_3),
	.L135_4(L_2_135_4),
	.L135_5(L_2_135_5),
	.L135_6(L_2_135_6),
	.L135_7(L_2_135_7),
	.L135_8(L_2_135_8),
	.L135_9(L_2_135_9),
	.L135_10(L_2_135_10),
	.L135_11(L_2_135_11),
	.L135_12(L_2_135_12),
	.L135_13(L_2_135_13),
	.L135_14(L_2_135_14),
	.L135_15(L_2_135_15),
	.L135_16(L_2_135_16),
	.L135_17(L_2_135_17),
	.L135_18(L_2_135_18),
	.L135_19(L_2_135_19),
	.L135_20(L_2_135_20),
	.L135_21(L_2_135_21),
	.L135_22(L_2_135_22),
	.L135_23(L_2_135_23),
	.L135_24(L_2_135_24),
	.L135_25(L_2_135_25),
	.L135_26(L_2_135_26),
	.L135_27(L_2_135_27),
	.L135_28(L_2_135_28),
	.L135_29(L_2_135_29),
	.L135_30(L_2_135_30),
	.L135_31(L_2_135_31)
	);
	reg change;
	wire[6:0] L_3_0_0;
	wire[6:0] L_3_0_1;
	wire[6:0] L_3_0_2;
	wire[6:0] L_3_0_3;
	wire[6:0] L_3_0_4;
	wire[6:0] L_3_0_5;
	wire[6:0] L_3_0_6;
	wire[6:0] L_3_0_7;
	wire[6:0] L_3_0_8;
	wire[6:0] L_3_0_9;
	wire[6:0] L_3_0_10;
	wire[6:0] L_3_0_11;
	wire[6:0] L_3_0_12;
	wire[6:0] L_3_0_13;
	wire[6:0] L_3_0_14;
	wire[6:0] L_3_0_15;
	wire[6:0] L_3_0_16;
	wire[6:0] L_3_0_17;
	wire[6:0] L_3_0_18;
	wire[6:0] L_3_0_19;
	wire[6:0] L_3_0_20;
	wire[6:0] L_3_0_21;
	wire[6:0] L_3_0_22;
	wire[6:0] L_3_0_23;
	wire[6:0] L_3_0_24;
	wire[6:0] L_3_0_25;
	wire[6:0] L_3_0_26;
	wire[6:0] L_3_0_27;
	wire[6:0] L_3_0_28;
	wire[6:0] L_3_0_29;
	wire[6:0] L_3_0_30;
	wire[6:0] L_3_0_31;
	
	wire[6:0] L_3_45_0;
	wire[6:0] L_3_45_1;
	wire[6:0] L_3_45_2;
	wire[6:0] L_3_45_3;
	wire[6:0] L_3_45_4;
	wire[6:0] L_3_45_5;
	wire[6:0] L_3_45_6;
	wire[6:0] L_3_45_7;
	wire[6:0] L_3_45_8;
	wire[6:0] L_3_45_9;
	wire[6:0] L_3_45_10;
	wire[6:0] L_3_45_11;
	wire[6:0] L_3_45_12;
	wire[6:0] L_3_45_13;
	wire[6:0] L_3_45_14;
	wire[6:0] L_3_45_15;
	wire[6:0] L_3_45_16;
	wire[6:0] L_3_45_17;
	wire[6:0] L_3_45_18;
	wire[6:0] L_3_45_19;
	wire[6:0] L_3_45_20;
	wire[6:0] L_3_45_21;
	wire[6:0] L_3_45_22;
	wire[6:0] L_3_45_23;
	wire[6:0] L_3_45_24;
	wire[6:0] L_3_45_25;
	wire[6:0] L_3_45_26;
	wire[6:0] L_3_45_27;
	wire[6:0] L_3_45_28;
	wire[6:0] L_3_45_29;
	wire[6:0] L_3_45_30;
	wire[6:0] L_3_45_31;
	
	wire[6:0] L_3_90_0;
	wire[6:0] L_3_90_1;
	wire[6:0] L_3_90_2;
	wire[6:0] L_3_90_3;
	wire[6:0] L_3_90_4;
	wire[6:0] L_3_90_5;
	wire[6:0] L_3_90_6;
	wire[6:0] L_3_90_7;
	wire[6:0] L_3_90_8;
	wire[6:0] L_3_90_9;
	wire[6:0] L_3_90_10;
	wire[6:0] L_3_90_11;
	wire[6:0] L_3_90_12;
	wire[6:0] L_3_90_13;
	wire[6:0] L_3_90_14;
	wire[6:0] L_3_90_15;
	wire[6:0] L_3_90_16;
	wire[6:0] L_3_90_17;
	wire[6:0] L_3_90_18;
	wire[6:0] L_3_90_19;
	wire[6:0] L_3_90_20;
	wire[6:0] L_3_90_21;
	wire[6:0] L_3_90_22;
	wire[6:0] L_3_90_23;
	wire[6:0] L_3_90_24;
	wire[6:0] L_3_90_25;
	wire[6:0] L_3_90_26;
	wire[6:0] L_3_90_27;
	wire[6:0] L_3_90_28;
	wire[6:0] L_3_90_29;
	wire[6:0] L_3_90_30;
	wire[6:0] L_3_90_31;
	
	wire[6:0] L_3_135_0;
	wire[6:0] L_3_135_1;
	wire[6:0] L_3_135_2;
	wire[6:0] L_3_135_3;
	wire[6:0] L_3_135_4;
	wire[6:0] L_3_135_5;
	wire[6:0] L_3_135_6;
	wire[6:0] L_3_135_7;
	wire[6:0] L_3_135_8;
	wire[6:0] L_3_135_9;
	wire[6:0] L_3_135_10;
	wire[6:0] L_3_135_11;
	wire[6:0] L_3_135_12;
	wire[6:0] L_3_135_13;
	wire[6:0] L_3_135_14;
	wire[6:0] L_3_135_15;
	wire[6:0] L_3_135_16;
	wire[6:0] L_3_135_17;
	wire[6:0] L_3_135_18;
	wire[6:0] L_3_135_19;
	wire[6:0] L_3_135_20;
	wire[6:0] L_3_135_21;
	wire[6:0] L_3_135_22;
	wire[6:0] L_3_135_23;
	wire[6:0] L_3_135_24;
	wire[6:0] L_3_135_25;
	wire[6:0] L_3_135_26;
	wire[6:0] L_3_135_27;
	wire[6:0] L_3_135_28;
	wire[6:0] L_3_135_29;
	wire[6:0] L_3_135_30;
	wire[6:0] L_3_135_31;
	wire valid_3;
	third_agg third_agg_inst(
	.clk(clk),
	.rst(rst),
	.clken(clken),
	.change(change),
	.valid_2(valid_2),
	.valid_3(valid_3),
	.cost0_0(L_2_0_0),
	.cost0_1(L_2_0_1),
	.cost0_2(L_2_0_2),
	.cost0_3(L_2_0_3),
	.cost0_4(L_2_0_4),
	.cost0_5(L_2_0_5),
	.cost0_6(L_2_0_6),
	.cost0_7(L_2_0_7),
	.cost0_8(L_2_0_8),
	.cost0_9(L_2_0_9),
	.cost0_10(L_2_0_10),
	.cost0_11(L_2_0_11),
	.cost0_12(L_2_0_12),
	.cost0_13(L_2_0_13),
	.cost0_14(L_2_0_14),
	.cost0_15(L_2_0_15),
	.cost0_16(L_2_0_16),
	.cost0_17(L_2_0_17),
	.cost0_18(L_2_0_18),
	.cost0_19(L_2_0_19),
	.cost0_20(L_2_0_20),
	.cost0_21(L_2_0_21),
	.cost0_22(L_2_0_22),
	.cost0_23(L_2_0_23),
	.cost0_24(L_2_0_24),
	.cost0_25(L_2_0_25),
	.cost0_26(L_2_0_26),
	.cost0_27(L_2_0_27),
	.cost0_28(L_2_0_28),
	.cost0_29(L_2_0_29),
	.cost0_30(L_2_0_30),
	.cost0_31(L_2_0_31),
	
	.cost45_0(L_2_45_0),
	.cost45_1(L_2_45_1),
	.cost45_2(L_2_45_2),
	.cost45_3(L_2_45_3),
	.cost45_4(L_2_45_4),
	.cost45_5(L_2_45_5),
	.cost45_6(L_2_45_6),
	.cost45_7(L_2_45_7),
	.cost45_8(L_2_45_8),
	.cost45_9(L_2_45_9),
	.cost45_10(L_2_45_10),
	.cost45_11(L_2_45_11),
	.cost45_12(L_2_45_12),
	.cost45_13(L_2_45_13),
	.cost45_14(L_2_45_14),
	.cost45_15(L_2_45_15),
	.cost45_16(L_2_45_16),
	.cost45_17(L_2_45_17),
	.cost45_18(L_2_45_18),
	.cost45_19(L_2_45_19),
	.cost45_20(L_2_45_20),
	.cost45_21(L_2_45_21),
	.cost45_22(L_2_45_22),
	.cost45_23(L_2_45_23),
	.cost45_24(L_2_45_24),
	.cost45_25(L_2_45_25),
	.cost45_26(L_2_45_26),
	.cost45_27(L_2_45_27),
	.cost45_28(L_2_45_28),
	.cost45_29(L_2_45_29),
	.cost45_30(L_2_45_30),
	.cost45_31(L_2_45_31),
	
	.cost90_0(L_2_90_0),
	.cost90_1(L_2_90_1),
	.cost90_2(L_2_90_2),
	.cost90_3(L_2_90_3),
	.cost90_4(L_2_90_4),
	.cost90_5(L_2_90_5),
	.cost90_6(L_2_90_6),
	.cost90_7(L_2_90_7),
	.cost90_8(L_2_90_8),
	.cost90_9(L_2_90_9),
	.cost90_10(L_2_90_10),
	.cost90_11(L_2_90_11),
	.cost90_12(L_2_90_12),
	.cost90_13(L_2_90_13),
	.cost90_14(L_2_90_14),
	.cost90_15(L_2_90_15),
	.cost90_16(L_2_90_16),
	.cost90_17(L_2_90_17),
	.cost90_18(L_2_90_18),
	.cost90_19(L_2_90_19),
	.cost90_20(L_2_90_20),
	.cost90_21(L_2_90_21),
	.cost90_22(L_2_90_22),
	.cost90_23(L_2_90_23),
	.cost90_24(L_2_90_24),
	.cost90_25(L_2_90_25),
	.cost90_26(L_2_90_26),
	.cost90_27(L_2_90_27),
	.cost90_28(L_2_90_28),
	.cost90_29(L_2_90_29),
	.cost90_30(L_2_90_30),
	.cost90_31(L_2_90_31),
	
	.cost135_0(L_2_135_0),
	.cost135_1(L_2_135_1),
	.cost135_2(L_2_135_2),
	.cost135_3(L_2_135_3),
	.cost135_4(L_2_135_4),
	.cost135_5(L_2_135_5),
	.cost135_6(L_2_135_6),
	.cost135_7(L_2_135_7),
	.cost135_8(L_2_135_8),
	.cost135_9(L_2_135_9),
	.cost135_10(L_2_135_10),
	.cost135_11(L_2_135_11),
	.cost135_12(L_2_135_12),
	.cost135_13(L_2_135_13),
	.cost135_14(L_2_135_14),
	.cost135_15(L_2_135_15),
	.cost135_16(L_2_135_16),
	.cost135_17(L_2_135_17),
	.cost135_18(L_2_135_18),
	.cost135_19(L_2_135_19),
	.cost135_20(L_2_135_20),
	.cost135_21(L_2_135_21),
	.cost135_22(L_2_135_22),
	.cost135_23(L_2_135_23),
	.cost135_24(L_2_135_24),
	.cost135_25(L_2_135_25),
	.cost135_26(L_2_135_26),
	.cost135_27(L_2_135_27),
	.cost135_28(L_2_135_28),
	.cost135_29(L_2_135_29),
	.cost135_30(L_2_135_30),
	.cost135_31(L_2_135_31),
	
	.agg3_0_0(new3_L0_0),
	.agg3_0_1(new3_L0_1),
	.agg3_0_2(new3_L0_2),
	.agg3_0_3(new3_L0_3),
	.agg3_0_4(new3_L0_4),
	.agg3_0_5(new3_L0_5),
	.agg3_0_6(new3_L0_6),
	.agg3_0_7(new3_L0_7),
	.agg3_0_8(new3_L0_8),
	.agg3_0_9(new3_L0_9),
	.agg3_0_10(new3_L0_10),
	.agg3_0_11(new3_L0_11),
	.agg3_0_12(new3_L0_12),
	.agg3_0_13(new3_L0_13),
	.agg3_0_14(new3_L0_14),
	.agg3_0_15(new3_L0_15),
	.agg3_0_16(new3_L0_16),
	.agg3_0_17(new3_L0_17),
	.agg3_0_18(new3_L0_18),
	.agg3_0_19(new3_L0_19),
	.agg3_0_20(new3_L0_20),
	.agg3_0_21(new3_L0_21),
	.agg3_0_22(new3_L0_22),
	.agg3_0_23(new3_L0_23),
	.agg3_0_24(new3_L0_24),
	.agg3_0_25(new3_L0_25),
	.agg3_0_26(new3_L0_26),
	.agg3_0_27(new3_L0_27),
	.agg3_0_28(new3_L0_28),
	.agg3_0_29(new3_L0_29),
	.agg3_0_30(new3_L0_30),
	.agg3_0_31(new3_L0_31),
	
	.agg3_45_0(new3_L45_0),
	.agg3_45_1(new3_L45_1),
	.agg3_45_2(new3_L45_2),
	.agg3_45_3(new3_L45_3),
	.agg3_45_4(new3_L45_4),
	.agg3_45_5(new3_L45_5),
	.agg3_45_6(new3_L45_6),
	.agg3_45_7(new3_L45_7),
	.agg3_45_8(new3_L45_8),
	.agg3_45_9(new3_L45_9),
	.agg3_45_10(new3_L45_10),
	.agg3_45_11(new3_L45_11),
	.agg3_45_12(new3_L45_12),
	.agg3_45_13(new3_L45_13),
	.agg3_45_14(new3_L45_14),
	.agg3_45_15(new3_L45_15),
	.agg3_45_16(new3_L45_16),
	.agg3_45_17(new3_L45_17),
	.agg3_45_18(new3_L45_18),
	.agg3_45_19(new3_L45_19),
	.agg3_45_20(new3_L45_20),
	.agg3_45_21(new3_L45_21),
	.agg3_45_22(new3_L45_22),
	.agg3_45_23(new3_L45_23),
	.agg3_45_24(new3_L45_24),
	.agg3_45_25(new3_L45_25),
	.agg3_45_26(new3_L45_26),
	.agg3_45_27(new3_L45_27),
	.agg3_45_28(new3_L45_28),
	.agg3_45_29(new3_L45_29),
	.agg3_45_30(new3_L45_30),
	.agg3_45_31(new3_L45_31),
	
	.agg3_90_0(new3_L90_0),
	.agg3_90_1(new3_L90_1),
	.agg3_90_2(new3_L90_2),
	.agg3_90_3(new3_L90_3),
	.agg3_90_4(new3_L90_4),
	.agg3_90_5(new3_L90_5),
	.agg3_90_6(new3_L90_6),
	.agg3_90_7(new3_L90_7),
	.agg3_90_8(new3_L90_8),
	.agg3_90_9(new3_L90_9),
	.agg3_90_10(new3_L90_10),
	.agg3_90_11(new3_L90_11),
	.agg3_90_12(new3_L90_12),
	.agg3_90_13(new3_L90_13),
	.agg3_90_14(new3_L90_14),
	.agg3_90_15(new3_L90_15),
	.agg3_90_16(new3_L90_16),
	.agg3_90_17(new3_L90_17),
	.agg3_90_18(new3_L90_18),
	.agg3_90_19(new3_L90_19),
	.agg3_90_20(new3_L90_20),
	.agg3_90_21(new3_L90_21),
	.agg3_90_22(new3_L90_22),
	.agg3_90_23(new3_L90_23),
	.agg3_90_24(new3_L90_24),
	.agg3_90_25(new3_L90_25),
	.agg3_90_26(new3_L90_26),
	.agg3_90_27(new3_L90_27),
	.agg3_90_28(new3_L90_28),
	.agg3_90_29(new3_L90_29),
	.agg3_90_30(new3_L90_30),
	.agg3_90_31(new3_L90_31),
	
	.agg3_135_0(new3_L135_0),
	.agg3_135_1(new3_L135_1),
	.agg3_135_2(new3_L135_2),
	.agg3_135_3(new3_L135_3),
	.agg3_135_4(new3_L135_4),
	.agg3_135_5(new3_L135_5),
	.agg3_135_6(new3_L135_6),
	.agg3_135_7(new3_L135_7),
	.agg3_135_8(new3_L135_8),
	.agg3_135_9(new3_L135_9),
	.agg3_135_10(new3_L135_10),
	.agg3_135_11(new3_L135_11),
	.agg3_135_12(new3_L135_12),
	.agg3_135_13(new3_L135_13),
	.agg3_135_14(new3_L135_14),
	.agg3_135_15(new3_L135_15),
	.agg3_135_16(new3_L135_16),
	.agg3_135_17(new3_L135_17),
	.agg3_135_18(new3_L135_18),
	.agg3_135_19(new3_L135_19),
	.agg3_135_20(new3_L135_20),
	.agg3_135_21(new3_L135_21),
	.agg3_135_22(new3_L135_22),
	.agg3_135_23(new3_L135_23),
	.agg3_135_24(new3_L135_24),
	.agg3_135_25(new3_L135_25),
	.agg3_135_26(new3_L135_26),
	.agg3_135_27(new3_L135_27),
	.agg3_135_28(new3_L135_28),
	.agg3_135_29(new3_L135_29),
	.agg3_135_30(new3_L135_30),
	.agg3_135_31(new3_L135_31),
	
	.L0_0(L_3_0_0),
	.L0_1(L_3_0_1),
	.L0_2(L_3_0_2),
	.L0_3(L_3_0_3),
	.L0_4(L_3_0_4),
	.L0_5(L_3_0_5),
	.L0_6(L_3_0_6),
	.L0_7(L_3_0_7),
	.L0_8(L_3_0_8),
	.L0_9(L_3_0_9),
	.L0_10(L_3_0_10),
	.L0_11(L_3_0_11),
	.L0_12(L_3_0_12),
	.L0_13(L_3_0_13),
	.L0_14(L_3_0_14),
	.L0_15(L_3_0_15),
	.L0_16(L_3_0_16),
	.L0_17(L_3_0_17),
	.L0_18(L_3_0_18),
	.L0_19(L_3_0_19),
	.L0_20(L_3_0_20),
	.L0_21(L_3_0_21),
	.L0_22(L_3_0_22),
	.L0_23(L_3_0_23),
	.L0_24(L_3_0_24),
	.L0_25(L_3_0_25),
	.L0_26(L_3_0_26),
	.L0_27(L_3_0_27),
	.L0_28(L_3_0_28),
	.L0_29(L_3_0_29),
	.L0_30(L_3_0_30),
	.L0_31(L_3_0_31),

	.L45_0(L_3_45_0),
	.L45_1(L_3_45_1),
	.L45_2(L_3_45_2),
	.L45_3(L_3_45_3),
	.L45_4(L_3_45_4),
	.L45_5(L_3_45_5),
	.L45_6(L_3_45_6),
	.L45_7(L_3_45_7),
	.L45_8(L_3_45_8),
	.L45_9(L_3_45_9),
	.L45_10(L_3_45_10),
	.L45_11(L_3_45_11),
	.L45_12(L_3_45_12),
	.L45_13(L_3_45_13),
	.L45_14(L_3_45_14),
	.L45_15(L_3_45_15),
	.L45_16(L_3_45_16),
	.L45_17(L_3_45_17),
	.L45_18(L_3_45_18),
	.L45_19(L_3_45_19),
	.L45_20(L_3_45_20),
	.L45_21(L_3_45_21),
	.L45_22(L_3_45_22),
	.L45_23(L_3_45_23),
	.L45_24(L_3_45_24),
	.L45_25(L_3_45_25),
	.L45_26(L_3_45_26),
	.L45_27(L_3_45_27),
	.L45_28(L_3_45_28),
	.L45_29(L_3_45_29),
	.L45_30(L_3_45_30),
	.L45_31(L_3_45_31),
	
	.L90_0(L_3_90_0),
	.L90_1(L_3_90_1),
	.L90_2(L_3_90_2),
	.L90_3(L_3_90_3),
	.L90_4(L_3_90_4),
	.L90_5(L_3_90_5),
	.L90_6(L_3_90_6),
	.L90_7(L_3_90_7),
	.L90_8(L_3_90_8),
	.L90_9(L_3_90_9),
	.L90_10(L_3_90_10),
	.L90_11(L_3_90_11),
	.L90_12(L_3_90_12),
	.L90_13(L_3_90_13),
	.L90_14(L_3_90_14),
	.L90_15(L_3_90_15),
	.L90_16(L_3_90_16),
	.L90_17(L_3_90_17),
	.L90_18(L_3_90_18),
	.L90_19(L_3_90_19),
	.L90_20(L_3_90_20),
	.L90_21(L_3_90_21),
	.L90_22(L_3_90_22),
	.L90_23(L_3_90_23),
	.L90_24(L_3_90_24),
	.L90_25(L_3_90_25),
	.L90_26(L_3_90_26),
	.L90_27(L_3_90_27),
	.L90_28(L_3_90_28),
	.L90_29(L_3_90_29),
	.L90_30(L_3_90_30),
	.L90_31(L_3_90_31),
	
	.L135_0(L_3_135_0),
	.L135_1(L_3_135_1),
	.L135_2(L_3_135_2),
	.L135_3(L_3_135_3),
	.L135_4(L_3_135_4),
	.L135_5(L_3_135_5),
	.L135_6(L_3_135_6),
	.L135_7(L_3_135_7),
	.L135_8(L_3_135_8),
	.L135_9(L_3_135_9),
	.L135_10(L_3_135_10),
	.L135_11(L_3_135_11),
	.L135_12(L_3_135_12),
	.L135_13(L_3_135_13),
	.L135_14(L_3_135_14),
	.L135_15(L_3_135_15),
	.L135_16(L_3_135_16),
	.L135_17(L_3_135_17),
	.L135_18(L_3_135_18),
	.L135_19(L_3_135_19),
	.L135_20(L_3_135_20),
	.L135_21(L_3_135_21),
	.L135_22(L_3_135_22),
	.L135_23(L_3_135_23),
	.L135_24(L_3_135_24),
	.L135_25(L_3_135_25),
	.L135_26(L_3_135_26),
	.L135_27(L_3_135_27),
	.L135_28(L_3_135_28),
	.L135_29(L_3_135_29),
	.L135_30(L_3_135_30),
	.L135_31(L_3_135_31)
	
	);
	//middle
	wire [6:0]L_0[31:0][2:0];
	wire [6:0]L_45[31:0][2:0];
	wire [6:0]L_90[31:0][2:0];
	wire [6:0]L_135[31:0][2:0];
	assign L_0[0][0]=L_3_0_0;
	assign L_0[1][0]=L_3_0_1;
	assign L_0[2][0]=L_3_0_2;
	assign L_0[3][0]=L_3_0_3;
	assign L_0[4][0]=L_3_0_4;
	assign L_0[5][0]=L_3_0_5;
	assign L_0[6][0]=L_3_0_6;
	assign L_0[7][0]=L_3_0_7;
	assign L_0[8][0]=L_3_0_8;
	assign L_0[9][0]=L_3_0_9;
	assign L_0[10][0]=L_3_0_10;
	assign L_0[11][0]=L_3_0_11;
	assign L_0[12][0]=L_3_0_12;
	assign L_0[13][0]=L_3_0_13;
	assign L_0[14][0]=L_3_0_14;
	assign L_0[15][0]=L_3_0_15;
	assign L_0[16][0]=L_3_0_16;
	assign L_0[17][0]=L_3_0_17;
	assign L_0[18][0]=L_3_0_18;
	assign L_0[19][0]=L_3_0_19;
	assign L_0[20][0]=L_3_0_20;
	assign L_0[21][0]=L_3_0_21;
	assign L_0[22][0]=L_3_0_22;
	assign L_0[23][0]=L_3_0_23;
	assign L_0[24][0]=L_3_0_24;
	assign L_0[25][0]=L_3_0_25;
	assign L_0[26][0]=L_3_0_26;
	assign L_0[27][0]=L_3_0_27;
	assign L_0[28][0]=L_3_0_28;
	assign L_0[29][0]=L_3_0_29;
	assign L_0[30][0]=L_3_0_30;
	assign L_0[31][0]=L_3_0_31;
	
	assign L_45[0][0]=L_3_45_0;
	assign L_45[1][0]=L_3_45_1;
	assign L_45[2][0]=L_3_45_2;
	assign L_45[3][0]=L_3_45_3;
	assign L_45[4][0]=L_3_45_4;
	assign L_45[5][0]=L_3_45_5;
	assign L_45[6][0]=L_3_45_6;
	assign L_45[7][0]=L_3_45_7;
	assign L_45[8][0]=L_3_45_8;
	assign L_45[9][0]=L_3_45_9;
	assign L_45[10][0]=L_3_45_10;
	assign L_45[11][0]=L_3_45_11;
	assign L_45[12][0]=L_3_45_12;
	assign L_45[13][0]=L_3_45_13;
	assign L_45[14][0]=L_3_45_14;
	assign L_45[15][0]=L_3_45_15;
	assign L_45[16][0]=L_3_45_16;
	assign L_45[17][0]=L_3_45_17;
	assign L_45[18][0]=L_3_45_18;
	assign L_45[19][0]=L_3_45_19;
	assign L_45[20][0]=L_3_45_20;
	assign L_45[21][0]=L_3_45_21;
	assign L_45[22][0]=L_3_45_22;
	assign L_45[23][0]=L_3_45_23;
	assign L_45[24][0]=L_3_45_24;
	assign L_45[25][0]=L_3_45_25;
	assign L_45[26][0]=L_3_45_26;
	assign L_45[27][0]=L_3_45_27;
	assign L_45[28][0]=L_3_45_28;
	assign L_45[29][0]=L_3_45_29;
	assign L_45[30][0]=L_3_45_30;
	assign L_45[31][0]=L_3_45_31;
	
	assign L_90[0][0]=L_3_90_0;
	assign L_90[1][0]=L_3_90_1;
	assign L_90[2][0]=L_3_90_2;
	assign L_90[3][0]=L_3_90_3;
	assign L_90[4][0]=L_3_90_4;
	assign L_90[5][0]=L_3_90_5;
	assign L_90[6][0]=L_3_90_6;
	assign L_90[7][0]=L_3_90_7;
	assign L_90[8][0]=L_3_90_8;
	assign L_90[9][0]=L_3_90_9;
	assign L_90[10][0]=L_3_90_10;
	assign L_90[11][0]=L_3_90_11;
	assign L_90[12][0]=L_3_90_12;
	assign L_90[13][0]=L_3_90_13;
	assign L_90[14][0]=L_3_90_14;
	assign L_90[15][0]=L_3_90_15;
	assign L_90[16][0]=L_3_90_16;
	assign L_90[17][0]=L_3_90_17;
	assign L_90[18][0]=L_3_90_18;
	assign L_90[19][0]=L_3_90_19;
	assign L_90[20][0]=L_3_90_20;
	assign L_90[21][0]=L_3_90_21;
	assign L_90[22][0]=L_3_90_22;
	assign L_90[23][0]=L_3_90_23;
	assign L_90[24][0]=L_3_90_24;
	assign L_90[25][0]=L_3_90_25;
	assign L_90[26][0]=L_3_90_26;
	assign L_90[27][0]=L_3_90_27;
	assign L_90[28][0]=L_3_90_28;
	assign L_90[29][0]=L_3_90_29;
	assign L_90[30][0]=L_3_90_30;
	assign L_90[31][0]=L_3_90_31;
	
	assign L_135[0][0]=L_3_135_0;
	assign L_135[1][0]=L_3_135_1;
	assign L_135[2][0]=L_3_135_2;
	assign L_135[3][0]=L_3_135_3;
	assign L_135[4][0]=L_3_135_4;
	assign L_135[5][0]=L_3_135_5;
	assign L_135[6][0]=L_3_135_6;
	assign L_135[7][0]=L_3_135_7;
	assign L_135[8][0]=L_3_135_8;
	assign L_135[9][0]=L_3_135_9;
	assign L_135[10][0]=L_3_135_10;
	assign L_135[11][0]=L_3_135_11;
	assign L_135[12][0]=L_3_135_12;
	assign L_135[13][0]=L_3_135_13;
	assign L_135[14][0]=L_3_135_14;
	assign L_135[15][0]=L_3_135_15;
	assign L_135[16][0]=L_3_135_16;
	assign L_135[17][0]=L_3_135_17;
	assign L_135[18][0]=L_3_135_18;
	assign L_135[19][0]=L_3_135_19;
	assign L_135[20][0]=L_3_135_20;
	assign L_135[21][0]=L_3_135_21;
	assign L_135[22][0]=L_3_135_22;
	assign L_135[23][0]=L_3_135_23;
	assign L_135[24][0]=L_3_135_24;
	assign L_135[25][0]=L_3_135_25;
	assign L_135[26][0]=L_3_135_26;
	assign L_135[27][0]=L_3_135_27;
	assign L_135[28][0]=L_3_135_28;
	assign L_135[29][0]=L_3_135_29;
	assign L_135[30][0]=L_3_135_30;
	assign L_135[31][0]=L_3_135_31;


	genvar i;
		generate 
			for(i=0;i<32;i=i+1)
				begin: shift_agg
				agg_middle agg_shift_L0(
				.clk(clk),
				.rst(rst),
				.clken(clken),
				.din(L_0[i][0]),				
				.dout(L_0[i][1])
				);
	            agg_middle agg_shift_L45(
			   .clk(clk),
				.rst(rst),
				.clken(clken),
				.din(L_45[i][0]),				
				.dout(L_45[i][1])
				);
		        agg_middle agg_shift_L90(
			    .clk(clk),
				.rst(rst),
				.clken(clken),
				.din(L_90[i][0]),				
				.dout(L_90[i][1])
				);
			     agg_middle agg_shift_L135(
			    .clk(clk),
				.rst(rst),
				.clken(clken),
				.din(L_135[i][0]),				
				.dout(L_135[i][1])
				);
				end
		endgenerate
	       
				
			agg2 agg2_inst(
				.clk(clk),
				.rst(rst),
				.clken(clken),
				.en_first(en_first),
				.agg0_0(L_0[0][2]),
	         .agg0_1(L_0[1][2]),
	         .agg0_2(L_0[2][2]),
	         .agg0_3(L_0[3][2]),
	         .agg0_4(L_0[4][2]),
	         .agg0_5(L_0[5][2]),
	         .agg0_6(L_0[6][2]),
	         .agg0_7(L_0[7][2]),
	         .agg0_8(L_0[8][2]),
	         .agg0_9(L_0[9][2]),
	         .agg0_10(L_0[10][2]),
	         .agg0_11(L_0[11][2]),
	         .agg0_12(L_0[12][2]),
	         .agg0_13(L_0[13][2]),
	         .agg0_14(L_0[14][2]),
	         .agg0_15(L_0[15][2]),
	         .agg0_16(L_0[16][2]),
	         .agg0_17(L_0[17][2]),
	         .agg0_18(L_0[18][2]),
	         .agg0_19(L_0[19][2]),
	         .agg0_20(L_0[20][2]),
	         .agg0_21(L_0[21][2]),
	         .agg0_22(L_0[22][2]),
	         .agg0_23(L_0[23][2]),
	         .agg0_24(L_0[24][2]),
	         .agg0_25(L_0[25][2]),
	         .agg0_26(L_0[26][2]),
	         .agg0_27(L_0[27][2]),
	         .agg0_28(L_0[28][2]),
	         .agg0_29(L_0[29][2]),
	         .agg0_30(L_0[30][2]),
	         .agg0_31(L_0[31][2]),

				
			   .cost0_0(L_0[0][1]),
	         .cost0_1(L_0[1][1]),
	         .cost0_2(L_0[2][1]),
	         .cost0_3(L_0[3][1]),
	         .cost0_4(L_0[4][1]),
	         .cost0_5(L_0[5][1]),
	         .cost0_6(L_0[6][1]),
	         .cost0_7(L_0[7][1]),
	         .cost0_8(L_0[8][1]),
	         .cost0_9(L_0[9][1]),
	         .cost0_10(L_0[10][1]),
	         .cost0_11(L_0[11][1]),
	         .cost0_12(L_0[12][1]),
	         .cost0_13(L_0[13][1]),
	         .cost0_14(L_0[14][1]),
	         .cost0_15(L_0[15][1]),
	         .cost0_16(L_0[16][1]),
	         .cost0_17(L_0[17][1]),
	         .cost0_18(L_0[18][1]),
	         .cost0_19(L_0[19][1]),
	         .cost0_20(L_0[20][1]),
	         .cost0_21(L_0[21][1]),
	         .cost0_22(L_0[22][1]),
	         .cost0_23(L_0[23][1]),
	         .cost0_24(L_0[24][1]),
	         .cost0_25(L_0[25][1]),
	         .cost0_26(L_0[26][1]),
	         .cost0_27(L_0[27][1]),
	         .cost0_28(L_0[28][1]),
	         .cost0_29(L_0[29][1]),
	         .cost0_30(L_0[30][1]),
	         .cost0_31(L_0[31][1]),

				.cost45_0(L_45[0][1]),
	         .cost45_1(L_45[1][1]),
	         .cost45_2(L_45[2][1]),
	         .cost45_3(L_45[3][1]),
	         .cost45_4(L_45[4][1]),
	         .cost45_5(L_45[5][1]),
	         .cost45_6(L_45[6][1]),
	         .cost45_7(L_45[7][1]),
	         .cost45_8(L_45[8][1]),
	         .cost45_9(L_45[9][1]),
	         .cost45_10(L_45[10][1]),
	         .cost45_11(L_45[11][1]),
	         .cost45_12(L_45[12][1]),
	         .cost45_13(L_45[13][1]),
	         .cost45_14(L_45[14][1]),
	         .cost45_15(L_45[15][1]),
	         .cost45_16(L_45[16][1]),
	         .cost45_17(L_45[17][1]),
	         .cost45_18(L_45[18][1]),
	         .cost45_19(L_45[19][1]),
	         .cost45_20(L_45[20][1]),
	         .cost45_21(L_45[21][1]),
	         .cost45_22(L_45[22][1]),
	         .cost45_23(L_45[23][1]),
	         .cost45_24(L_45[24][1]),
	         .cost45_25(L_45[25][1]),
	         .cost45_26(L_45[26][1]),
	         .cost45_27(L_45[27][1]),
	         .cost45_28(L_45[28][1]),
	         .cost45_29(L_45[29][1]),
	         .cost45_30(L_45[30][1]),
	         .cost45_31(L_45[31][1]),

				.cost90_0(L_90[0][1]),
	         .cost90_1(L_90[1][1]),
	         .cost90_2(L_90[2][1]),
	         .cost90_3(L_90[3][1]),
	         .cost90_4(L_90[4][1]),
	         .cost90_5(L_90[5][1]),
	         .cost90_6(L_90[6][1]),
	         .cost90_7(L_90[7][1]),
	         .cost90_8(L_90[8][1]),
	         .cost90_9(L_90[9][1]),
	         .cost90_10(L_90[10][1]),
	         .cost90_11(L_90[11][1]),
	         .cost90_12(L_90[12][1]),
	         .cost90_13(L_90[13][1]),
	         .cost90_14(L_90[14][1]),
	         .cost90_15(L_90[15][1]),
	         .cost90_16(L_90[16][1]),
	         .cost90_17(L_90[17][1]),
	         .cost90_18(L_90[18][1]),
	         .cost90_19(L_90[19][1]),
	         .cost90_20(L_90[20][1]),
	         .cost90_21(L_90[21][1]),
	         .cost90_22(L_90[22][1]),
	         .cost90_23(L_90[23][1]),
	         .cost90_24(L_90[24][1]),
	         .cost90_25(L_90[25][1]),
	         .cost90_26(L_90[26][1]),
	         .cost90_27(L_90[27][1]),
	         .cost90_28(L_90[28][1]),
	         .cost90_29(L_90[29][1]),
	         .cost90_30(L_90[30][1]),
	         .cost90_31(L_90[31][1]),
				
				.cost135_0(L_135[0][1]),
	         .cost135_1(L_135[1][1]),
	         .cost135_2(L_135[2][1]),
	         .cost135_3(L_135[3][1]),
	         .cost135_4(L_135[4][1]),
	         .cost135_5(L_135[5][1]),
	         .cost135_6(L_135[6][1]),
	         .cost135_7(L_135[7][1]),
	         .cost135_8(L_135[8][1]),
	         .cost135_9(L_135[9][1]),
	         .cost135_10(L_135[10][1]),
	         .cost135_11(L_135[11][1]),
	         .cost135_12(L_135[12][1]),
	         .cost135_13(L_135[13][1]),
	         .cost135_14(L_135[14][1]),
	         .cost135_15(L_135[15][1]),
	         .cost135_16(L_135[16][1]),
	         .cost135_17(L_135[17][1]),
	         .cost135_18(L_135[18][1]),
	         .cost135_19(L_135[19][1]),
	         .cost135_20(L_135[20][1]),
	         .cost135_21(L_135[21][1]),
	         .cost135_22(L_135[22][1]),
	         .cost135_23(L_135[23][1]),
	         .cost135_24(L_135[24][1]),
	         .cost135_25(L_135[25][1]),
	         .cost135_26(L_135[26][1]),
	         .cost135_27(L_135[27][1]),	
	         .cost135_28(L_135[28][1]),
	         .cost135_29(L_135[29][1]),
	         .cost135_30(L_135[30][1]),
	         .cost135_31(L_135[31][1]),		
				.min_0_in(min_0),
				.min_90(min_90),
				.min_135(min_135),
				.min_0_out(min_0),
				.L0_0(L_0[0][2]),
	         .L0_1(L_0[1][2]),
	         .L0_2(L_0[2][2]),
	         .L0_3(L_0[3][2]),
	         .L0_4(L_0[4][2]),
	         .L0_5(L_0[5][2]),
	         .L0_6(L_0[6][2]),
	         .L0_7(L_0[7][2]),
	         .L0_8(L_0[8][2]),
	         .L0_9(L_0[9][2]),
	         .L0_10(L_0[10][2]),
	         .L0_11(L_0[11][2]),
	         .L0_12(L_0[12][2]),
	         .L0_13(L_0[13][2]),
	         .L0_14(L_0[14][2]),
	         .L0_15(L_0[15][2]),
	         .L0_16(L_0[16][2]),
	         .L0_17(L_0[17][2]),
	         .L0_18(L_0[18][2]),
	         .L0_19(L_0[19][2]),
	         .L0_20(L_0[20][2]),
	         .L0_21(L_0[21][2]),
	         .L0_22(L_0[22][2]),
	         .L0_23(L_0[23][2]),
	         .L0_24(L_0[24][2]),
	         .L0_25(L_0[25][2]),
	         .L0_26(L_0[26][2]),
	         .L0_27(L_0[27][2]),
	         .L0_28(L_0[28][2]),
	         .L0_29(L_0[29][2]),
	         .L0_30(L_0[30][2]),
	         .L0_31(L_0[31][2]),

				.L45_0(L_45[0][2]),
	         .L45_1(L_45[1][2]),
	         .L45_2(L_45[2][2]),
	         .L45_3(L_45[3][2]),
	         .L45_4(L_45[4][2]),
	         .L45_5(L_45[5][2]),
	         .L45_6(L_45[6][2]),
	         .L45_7(L_45[7][2]),
	         .L45_8(L_45[8][2]),
	         .L45_9(L_45[9][2]),
	         .L45_10(L_45[10][2]),
	         .L45_11(L_45[11][2]),
	         .L45_12(L_45[12][2]),
	         .L45_13(L_45[13][2]),
	         .L45_14(L_45[14][2]),
	         .L45_15(L_45[15][2]),
	         .L45_16(L_45[16][2]),
	         .L45_17(L_45[17][2]),
	         .L45_18(L_45[18][2]),
	         .L45_19(L_45[19][2]),
	         .L45_20(L_45[20][2]),
	         .L45_21(L_45[21][2]),
	         .L45_22(L_45[22][2]),
	         .L45_23(L_45[23][2]),
	         .L45_24(L_45[24][2]),
	         .L45_25(L_45[25][2]),
	         .L45_26(L_45[26][2]),
	         .L45_27(L_45[27][2]),
	         .L45_28(L_45[28][2]),
	         .L45_29(L_45[29][2]),
	         .L45_30(L_45[30][2]),
	         .L45_31(L_45[31][2]),

				.L90_0(L_90[0][2]),
	         .L90_1(L_90[1][2]),
	         .L90_2(L_90[2][2]),
	         .L90_3(L_90[3][2]),
	         .L90_4(L_90[4][2]),
	         .L90_5(L_90[5][2]),
	         .L90_6(L_90[6][2]),
	         .L90_7(L_90[7][2]),
	         .L90_8(L_90[8][2]),
	         .L90_9(L_90[9][2]),
	         .L90_10(L_90[10][2]),
	         .L90_11(L_90[11][2]),
	         .L90_12(L_90[12][2]),
	         .L90_13(L_90[13][2]),
	         .L90_14(L_90[14][2]),
	         .L90_15(L_90[15][2]),
	         .L90_16(L_90[16][2]),
	         .L90_17(L_90[17][2]),
	         .L90_18(L_90[18][2]),
	         .L90_19(L_90[19][2]),
	         .L90_20(L_90[20][2]),
	         .L90_21(L_90[21][2]),
	         .L90_22(L_90[22][2]),
	         .L90_23(L_90[23][2]),
	         .L90_24(L_90[24][2]),
	         .L90_25(L_90[25][2]),
	         .L90_26(L_90[26][2]),
	         .L90_27(L_90[27][2]),
	         .L90_28(L_90[28][2]),
	         .L90_29(L_90[29][2]),
	         .L90_30(L_90[30][2]),
	         .L90_31(L_90[31][2]),
				
				.L135_0(L_135[0][2]),
	         .L135_1(L_135[1][2]),
	         .L135_2(L_135[2][2]),
	         .L135_3(L_135[3][2]),
	         .L135_4(L_135[4][2]),
	         .L135_5(L_135[5][2]),
	         .L135_6(L_135[6][2]),
	         .L135_7(L_135[7][2]),
	         .L135_8(L_135[8][2]),
	         .L135_9(L_135[9][2]),
	         .L135_10(L_135[10][2]),
	         .L135_11(L_135[11][2]),
	         .L135_12(L_135[12][2]),
	         .L135_13(L_135[13][2]),
	         .L135_14(L_135[14][2]),
	         .L135_15(L_135[15][2]),
	         .L135_16(L_135[16][2]),
	         .L135_17(L_135[17][2]),
	         .L135_18(L_135[18][2]),
	         .L135_19(L_135[19][2]),
	         .L135_20(L_135[20][2]),
	         .L135_21(L_135[21][2]),
	         .L135_22(L_135[22][2]),
	         .L135_23(L_135[23][2]),
	         .L135_24(L_135[24][2]),
	         .L135_25(L_135[25][2]),
	         .L135_26(L_135[26][2]),
	         .L135_27(L_135[27][2]),	
	         .L135_28(L_135[28][2]),
	         .L135_29(L_135[29][2]),
	         .L135_30(L_135[30][2]),
	         .L135_31(L_135[31][2])	
				);
		   reg en_agg4;
			reg rst0;
	agg4 agg4_inst(
	.clk(clk),
	.rst0(rst0),
	.rst(rst),
	.clken(clken),
	.en_first(en_first),//first pixel of every row
	.en_agg4(en_agg4),  //when second row comes
	.min_45(min_45),
	.min_90(min_90),
	.L0_0(cost0),
	.L0_1(cost1),
	.L0_2(cost2),
	.L0_3(cost3),
	.L0_4(cost4),
	.L0_5(cost5),
	.L0_6(cost6),
	.L0_7(cost7),
	.L0_8(cost8),
	.L0_9(cost9),
	.L0_10(cost10),
	.L0_11(cost11),
	.L0_12(cost12),
	.L0_13(cost13),
	.L0_14(cost14),
	.L0_15(cost15),
	.L0_16(cost16),
	.L0_17(cost17),
	.L0_18(cost18),
	.L0_19(cost19),
	.L0_20(cost20),
	.L0_21(cost21),
	.L0_22(cost22),
	.L0_23(cost23),
	.L0_24(cost24),
	.L0_25(cost25),
	.L0_26(cost26),
	.L0_27(cost27),
	.L0_28(cost28),
	.L0_29(cost29),
	.L0_30(cost30),
	.L0_31(cost31),
	
	.L45_0(cost0),
	.L45_1(cost1),
	.L45_2(cost2),
	.L45_3(cost3),
	.L45_4(cost4),
	.L45_5(cost5),
	.L45_6(cost6),
	.L45_7(cost7),
	.L45_8(cost8),
	.L45_9(cost9),
	.L45_10(cost10),
	.L45_11(cost11),
	.L45_12(cost12),
	.L45_13(cost13),
	.L45_14(cost14),
	.L45_15(cost15),
	.L45_16(cost16),
	.L45_17(cost17),
	.L45_18(cost18),
	.L45_19(cost19),
	.L45_20(cost20),
	.L45_21(cost21),
	.L45_22(cost22),
	.L45_23(cost23),
	.L45_24(cost24),
	.L45_25(cost25),
	.L45_26(cost26),
	.L45_27(cost27),
	.L45_28(cost28),
	.L45_29(cost29),
	.L45_30(cost30),
	.L45_31(cost31),
	
	.L90_0(cost0),
	.L90_1(cost1),
	.L90_2(cost2),
	.L90_3(cost3),
	.L90_4(cost4),
	.L90_5(cost5),
	.L90_6(cost6),
	.L90_7(cost7),
	.L90_8(cost8),
	.L90_9(cost9),
	.L90_10(cost10),
	.L90_11(cost11),
	.L90_12(cost12),
	.L90_13(cost13),
	.L90_14(cost14),
	.L90_15(cost15),
	.L90_16(cost16),
	.L90_17(cost17),
	.L90_18(cost18),
	.L90_19(cost19),
	.L90_20(cost20),
	.L90_21(cost21),
	.L90_22(cost22),
	.L90_23(cost23),
	.L90_24(cost24),
	.L90_25(cost25),
	.L90_26(cost26),
	.L90_27(cost27),
	.L90_28(cost28),
	.L90_29(cost29),
	.L90_30(cost30),
	.L90_31(cost31),
	
	.L135_0(cost0),
	.L135_1(cost1),
	.L135_2(cost2),
	.L135_3(cost3),
	.L135_4(cost4),
	.L135_5(cost5),
	.L135_6(cost6),
	.L135_7(cost7),
	.L135_8(cost8),
	.L135_9(cost9),
	.L135_10(cost10),
	.L135_11(cost11),
	.L135_12(cost12),
	.L135_13(cost13),
	.L135_14(cost14),
	.L135_15(cost15),
	.L135_16(cost16),
	.L135_17(cost17),
	.L135_18(cost18),
	.L135_19(cost19),
	.L135_20(cost20),
	.L135_21(cost21),
	.L135_22(cost22),
	.L135_23(cost23),
	.L135_24(cost24),
	.L135_25(cost25),
	.L135_26(cost26),
	.L135_27(cost27),
	.L135_28(cost28),
	.L135_29(cost29),
	.L135_30(cost30),
	.L135_31(cost31),
	
	.agg90_0(L_90[0][2]),
	.agg90_1(L_90[1][2]),
	.agg90_2(L_90[2][2]),
	.agg90_3(L_90[3][2]),
	.agg90_4(L_90[4][2]),
	.agg90_5(L_90[5][2]),
	.agg90_6(L_90[6][2]),
	.agg90_7(L_90[7][2]),
	.agg90_8(L_90[8][2]),
	.agg90_9(L_90[9][2]),
	.agg90_10(L_90[10][2]),
	.agg90_11(L_90[11][2]),
	.agg90_12(L_90[12][2]),
	.agg90_13(L_90[13][2]),
	.agg90_14(L_90[14][2]),
	.agg90_15(L_90[15][2]),
	.agg90_16(L_90[16][2]),
	.agg90_17(L_90[17][2]),
	.agg90_18(L_90[18][2]),
	.agg90_19(L_90[19][2]),
	.agg90_20(L_90[20][2]),
	.agg90_21(L_90[21][2]),
	.agg90_22(L_90[22][2]),
	.agg90_23(L_90[23][2]),
	.agg90_24(L_90[24][2]),
	.agg90_25(L_90[25][2]),
	.agg90_26(L_90[26][2]),
	.agg90_27(L_90[27][2]),
	.agg90_28(L_90[28][2]),
	.agg90_29(L_90[29][2]),
	.agg90_30(L_90[30][2]),
	.agg90_31(L_90[31][2]),
	
	.agg45_0(new2_L45_0),
	.agg45_1(new2_L45_1),
	.agg45_2(new2_L45_2),
	.agg45_3(new2_L45_3),
	.agg45_4(new2_L45_4),
	.agg45_5(new2_L45_5),
	.agg45_6(new2_L45_6),
	.agg45_7(new2_L45_7),
	.agg45_8(new2_L45_8),
	.agg45_9(new2_L45_9),
	.agg45_10(new2_L45_10),
	.agg45_11(new2_L45_11),
	.agg45_12(new2_L45_12),
	.agg45_13(new2_L45_13),
	.agg45_14(new2_L45_14),
	.agg45_15(new2_L45_15),
	.agg45_16(new2_L45_16),
	.agg45_17(new2_L45_17),
	.agg45_18(new2_L45_18),
	.agg45_19(new2_L45_19),
	.agg45_20(new2_L45_20),
	.agg45_21(new2_L45_21),
	.agg45_22(new2_L45_22),
	.agg45_23(new2_L45_23),
	.agg45_24(new2_L45_24),
	.agg45_25(new2_L45_25),
	.agg45_26(new2_L45_26),
	.agg45_27(new2_L45_27),
	.agg45_28(new2_L45_28),
	.agg45_29(new2_L45_29),
	.agg45_30(new2_L45_30),
	.agg45_31(new2_L45_31),
	
	.new_L0_0(new4_L0_0),
	.new_L0_1(new4_L0_1),
	.new_L0_2(new4_L0_2),
	.new_L0_3(new4_L0_3),
	.new_L0_4(new4_L0_4),
	.new_L0_5(new4_L0_5),
	.new_L0_6(new4_L0_6),
	.new_L0_7(new4_L0_7),
	.new_L0_8(new4_L0_8),
	.new_L0_9(new4_L0_9),
	.new_L0_10(new4_L0_10),
	.new_L0_11(new4_L0_11),
	.new_L0_12(new4_L0_12),
	.new_L0_13(new4_L0_13),
	.new_L0_14(new4_L0_14),
	.new_L0_15(new4_L0_15),
	.new_L0_16(new4_L0_16),
	.new_L0_17(new4_L0_17),
	.new_L0_18(new4_L0_18),
	.new_L0_19(new4_L0_19),
	.new_L0_20(new4_L0_20),
	.new_L0_21(new4_L0_21),
	.new_L0_22(new4_L0_22),
	.new_L0_23(new4_L0_23),
	.new_L0_24(new4_L0_24),
	.new_L0_25(new4_L0_25),
	.new_L0_26(new4_L0_26),
	.new_L0_27(new4_L0_27),
	.new_L0_28(new4_L0_28),
	.new_L0_29(new4_L0_29),
	.new_L0_30(new4_L0_30),
	.new_L0_31(new4_L0_31),
	
	.new_L45_0(new4_L45_0),
	.new_L45_1(new4_L45_1),
	.new_L45_2(new4_L45_2),
	.new_L45_3(new4_L45_3),
	.new_L45_4(new4_L45_4),
	.new_L45_5(new4_L45_5),
	.new_L45_6(new4_L45_6),
	.new_L45_7(new4_L45_7),
	.new_L45_8(new4_L45_8),
	.new_L45_9(new4_L45_9),
	.new_L45_10(new4_L45_10),
	.new_L45_11(new4_L45_11),
	.new_L45_12(new4_L45_12),
	.new_L45_13(new4_L45_13),
	.new_L45_14(new4_L45_14),
	.new_L45_15(new4_L45_15),
	.new_L45_16(new4_L45_16),
	.new_L45_17(new4_L45_17),
	.new_L45_18(new4_L45_18),
	.new_L45_19(new4_L45_19),
	.new_L45_20(new4_L45_20),
	.new_L45_21(new4_L45_21),
	.new_L45_22(new4_L45_22),
	.new_L45_23(new4_L45_23),
	.new_L45_24(new4_L45_24),
	.new_L45_25(new4_L45_25),
	.new_L45_26(new4_L45_26),
	.new_L45_27(new4_L45_27),
	.new_L45_28(new4_L45_28),
	.new_L45_29(new4_L45_29),
	.new_L45_30(new4_L45_30),
	.new_L45_31(new4_L45_31),
	
	.new_L90_0(new4_L90_0),
	.new_L90_1(new4_L90_1),
	.new_L90_2(new4_L90_2),
	.new_L90_3(new4_L90_3),
	.new_L90_4(new4_L90_4),
	.new_L90_5(new4_L90_5),
	.new_L90_6(new4_L90_6),
	.new_L90_7(new4_L90_7),
	.new_L90_8(new4_L90_8),
	.new_L90_9(new4_L90_9),
	.new_L90_10(new4_L90_10),
	.new_L90_11(new4_L90_11),
	.new_L90_12(new4_L90_12),
	.new_L90_13(new4_L90_13),
	.new_L90_14(new4_L90_14),
	.new_L90_15(new4_L90_15),
	.new_L90_16(new4_L90_16),
	.new_L90_17(new4_L90_17),
	.new_L90_18(new4_L90_18),
	.new_L90_19(new4_L90_19),
	.new_L90_20(new4_L90_20),
	.new_L90_21(new4_L90_21),
	.new_L90_22(new4_L90_22),
	.new_L90_23(new4_L90_23),
	.new_L90_24(new4_L90_24),
	.new_L90_25(new4_L90_25),
	.new_L90_26(new4_L90_26),
	.new_L90_27(new4_L90_27),
	.new_L90_28(new4_L90_28),
	.new_L90_29(new4_L90_29),
	.new_L90_30(new4_L90_30),
	.new_L90_31(new4_L90_31),
	
	.new_L135_0(new4_L135_0),
	.new_L135_1(new4_L135_1),
	.new_L135_2(new4_L135_2),
	.new_L135_3(new4_L135_3),
	.new_L135_4(new4_L135_4),
	.new_L135_5(new4_L135_5),
	.new_L135_6(new4_L135_6),
	.new_L135_7(new4_L135_7),
	.new_L135_8(new4_L135_8),
	.new_L135_9(new4_L135_9),
	.new_L135_10(new4_L135_10),
	.new_L135_11(new4_L135_11),
	.new_L135_12(new4_L135_12),
	.new_L135_13(new4_L135_13),
	.new_L135_14(new4_L135_14),
	.new_L135_15(new4_L135_15),
	.new_L135_16(new4_L135_16),
	.new_L135_17(new4_L135_17),
	.new_L135_18(new4_L135_18),
	.new_L135_19(new4_L135_19),
	.new_L135_20(new4_L135_20),
	.new_L135_21(new4_L135_21),
	.new_L135_22(new4_L135_22),
	.new_L135_23(new4_L135_23),
	.new_L135_24(new4_L135_24),
	.new_L135_25(new4_L135_25),
	.new_L135_26(new4_L135_26),
	.new_L135_27(new4_L135_27),
	.new_L135_28(new4_L135_28),
	.new_L135_29(new4_L135_29),
	.new_L135_30(new4_L135_30),
	.new_L135_31(new4_L135_31),
	.en_agg3(en_agg3)
	);

	agg3 agg3_inst(
	.clk(clk),
	.rst0(rst0),
	.rst(rst),
	.clken(clken),
	.en_first(en_first),
	.en_agg3(en_agg3),
	.L0_0(new4_L0_0),
	.L0_1(new4_L0_1),
	.L0_2(new4_L0_2),
	.L0_3(new4_L0_3),
	.L0_4(new4_L0_4),
	.L0_5(new4_L0_5),
	.L0_6(new4_L0_6),
	.L0_7(new4_L0_7),
	.L0_8(new4_L0_8),
	.L0_9(new4_L0_9),
	.L0_10(new4_L0_10),
	.L0_11(new4_L0_11),
	.L0_12(new4_L0_12),
	.L0_13(new4_L0_13),
	.L0_14(new4_L0_14),
	.L0_15(new4_L0_15),
	.L0_16(new4_L0_16),
	.L0_17(new4_L0_17),
	.L0_18(new4_L0_18),
	.L0_19(new4_L0_19),
	.L0_20(new4_L0_20),
	.L0_21(new4_L0_21),
	.L0_22(new4_L0_22),
	.L0_23(new4_L0_23),
	.L0_24(new4_L0_24),
	.L0_25(new4_L0_25),
	.L0_26(new4_L0_26),
	.L0_27(new4_L0_27),
	.L0_28(new4_L0_28),
	.L0_29(new4_L0_29),
	.L0_30(new4_L0_30),
	.L0_31(new4_L0_31),
	
	.L45_0(new4_L45_0),
	.L45_1(new4_L45_1),
	.L45_2(new4_L45_2),
	.L45_3(new4_L45_3),
	.L45_4(new4_L45_4),
	.L45_5(new4_L45_5),
	.L45_6(new4_L45_6),
	.L45_7(new4_L45_7),
	.L45_8(new4_L45_8),
	.L45_9(new4_L45_9),
	.L45_10(new4_L45_10),
	.L45_11(new4_L45_11),
	.L45_12(new4_L45_12),
	.L45_13(new4_L45_13),
	.L45_14(new4_L45_14),
	.L45_15(new4_L45_15),
	.L45_16(new4_L45_16),
	.L45_17(new4_L45_17),
	.L45_18(new4_L45_18),
	.L45_19(new4_L45_19),
	.L45_20(new4_L45_20),
	.L45_21(new4_L45_21),
	.L45_22(new4_L45_22),
	.L45_23(new4_L45_23),
	.L45_24(new4_L45_24),
	.L45_25(new4_L45_25),
	.L45_26(new4_L45_26),
	.L45_27(new4_L45_27),
	.L45_28(new4_L45_28),
	.L45_29(new4_L45_29),
	.L45_30(new4_L45_30),
	.L45_31(new4_L45_31),
	
	.L90_0(new4_L90_0),
	.L90_1(new4_L90_1),
	.L90_2(new4_L90_2),
	.L90_3(new4_L90_3),
	.L90_4(new4_L90_4),
	.L90_5(new4_L90_5),
	.L90_6(new4_L90_6),
	.L90_7(new4_L90_7),
	.L90_8(new4_L90_8),
	.L90_9(new4_L90_9),
	.L90_10(new4_L90_10),
	.L90_11(new4_L90_11),
	.L90_12(new4_L90_12),
	.L90_13(new4_L90_13),
	.L90_14(new4_L90_14),
	.L90_15(new4_L90_15),
	.L90_16(new4_L90_16),
	.L90_17(new4_L90_17),
	.L90_18(new4_L90_18),
	.L90_19(new4_L90_19),
	.L90_20(new4_L90_20),
	.L90_21(new4_L90_21),
	.L90_22(new4_L90_22),
	.L90_23(new4_L90_23),
	.L90_24(new4_L90_24),
	.L90_25(new4_L90_25),
	.L90_26(new4_L90_26),
	.L90_27(new4_L90_27),
	.L90_28(new4_L90_28),
	.L90_29(new4_L90_29),
	.L90_30(new4_L90_30),
	.L90_31(new4_L90_31),
	
	.L135_0(new4_L135_0),
	.L135_1(new4_L135_1),
	.L135_2(new4_L135_2),
	.L135_3(new4_L135_3),
	.L135_4(new4_L135_4),
	.L135_5(new4_L135_5),
	.L135_6(new4_L135_6),
	.L135_7(new4_L135_7),
	.L135_8(new4_L135_8),
	.L135_9(new4_L135_9),
	.L135_10(new4_L135_10),
	.L135_11(new4_L135_11),
	.L135_12(new4_L135_12),
	.L135_13(new4_L135_13),
	.L135_14(new4_L135_14),
	.L135_15(new4_L135_15),
	.L135_16(new4_L135_16),
	.L135_17(new4_L135_17),
	.L135_18(new4_L135_18),
	.L135_19(new4_L135_19),
	.L135_20(new4_L135_20),
	.L135_21(new4_L135_21),
	.L135_22(new4_L135_22),
	.L135_23(new4_L135_23),
	.L135_24(new4_L135_24),
	.L135_25(new4_L135_25),
	.L135_26(new4_L135_26),
	.L135_27(new4_L135_27),
	.L135_28(new4_L135_28),
	.L135_29(new4_L135_29),
	.L135_30(new4_L135_30),
	.L135_31(new4_L135_31),
	
	.min_135(min_135),
	.agg135_0(L_135[0][2]),
	.agg135_1(L_135[1][2]),
	.agg135_2(L_135[2][2]),
	.agg135_3(L_135[3][2]),
	.agg135_4(L_135[4][2]),
	.agg135_5(L_135[5][2]),
	.agg135_6(L_135[6][2]),
	.agg135_7(L_135[7][2]),
	.agg135_8(L_135[8][2]),
	.agg135_9(L_135[9][2]),
	.agg135_10(L_135[10][2]),
	.agg135_11(L_135[11][2]),
	.agg135_12(L_135[12][2]),
	.agg135_13(L_135[13][2]),
	.agg135_14(L_135[14][2]),
	.agg135_15(L_135[15][2]),
	.agg135_16(L_135[16][2]),
	.agg135_17(L_135[17][2]),
	.agg135_18(L_135[18][2]),
	.agg135_19(L_135[19][2]),
	.agg135_20(L_135[20][2]),
	.agg135_21(L_135[21][2]),
	.agg135_22(L_135[22][2]),
	.agg135_23(L_135[23][2]),
	.agg135_24(L_135[24][2]),
	.agg135_25(L_135[25][2]),
	.agg135_26(L_135[26][2]),
	.agg135_27(L_135[27][2]),
	.agg135_28(L_135[28][2]),
	.agg135_29(L_135[29][2]),
	.agg135_30(L_135[30][2]),
	.agg135_31(L_135[31][2]),
	
	.new_L0_0(new3_L0_0),
	.new_L0_1(new3_L0_1),
	.new_L0_2(new3_L0_2),
	.new_L0_3(new3_L0_3),
	.new_L0_4(new3_L0_4),
	.new_L0_5(new3_L0_5),
	.new_L0_6(new3_L0_6),
	.new_L0_7(new3_L0_7),
	.new_L0_8(new3_L0_8),
	.new_L0_9(new3_L0_9),
	.new_L0_10(new3_L0_10),
	.new_L0_11(new3_L0_11),
	.new_L0_12(new3_L0_12),
	.new_L0_13(new3_L0_13),
	.new_L0_14(new3_L0_14),
	.new_L0_15(new3_L0_15),
	.new_L0_16(new3_L0_16),
	.new_L0_17(new3_L0_17),
	.new_L0_18(new3_L0_18),
	.new_L0_19(new3_L0_19),
	.new_L0_20(new3_L0_20),
	.new_L0_21(new3_L0_21),
	.new_L0_22(new3_L0_22),
	.new_L0_23(new3_L0_23),
	.new_L0_24(new3_L0_24),
	.new_L0_25(new3_L0_25),
	.new_L0_26(new3_L0_26),
	.new_L0_27(new3_L0_27),
	.new_L0_28(new3_L0_28),
	.new_L0_29(new3_L0_29),
	.new_L0_30(new3_L0_30),
	.new_L0_31(new3_L0_31),
	
	.new_L45_0(new3_L45_0),
	.new_L45_1(new3_L45_1),
	.new_L45_2(new3_L45_2),
	.new_L45_3(new3_L45_3),
	.new_L45_4(new3_L45_4),
	.new_L45_5(new3_L45_5),
	.new_L45_6(new3_L45_6),
	.new_L45_7(new3_L45_7),
	.new_L45_8(new3_L45_8),
	.new_L45_9(new3_L45_9),
	.new_L45_10(new3_L45_10),
	.new_L45_11(new3_L45_11),
	.new_L45_12(new3_L45_12),
	.new_L45_13(new3_L45_13),
	.new_L45_14(new3_L45_14),
	.new_L45_15(new3_L45_15),
	.new_L45_16(new3_L45_16),
	.new_L45_17(new3_L45_17),
	.new_L45_18(new3_L45_18),
	.new_L45_19(new3_L45_19),
	.new_L45_20(new3_L45_20),
	.new_L45_21(new3_L45_21),
	.new_L45_22(new3_L45_22),
	.new_L45_23(new3_L45_23),
	.new_L45_24(new3_L45_24),
	.new_L45_25(new3_L45_25),
	.new_L45_26(new3_L45_26),
	.new_L45_27(new3_L45_27),
	.new_L45_28(new3_L45_28),
	.new_L45_29(new3_L45_29),
	.new_L45_30(new3_L45_30),
	.new_L45_31(new3_L45_31),
	
	.new_L90_0(new3_L90_0),
	.new_L90_1(new3_L90_1),
	.new_L90_2(new3_L90_2),
	.new_L90_3(new3_L90_3),
	.new_L90_4(new3_L90_4),
	.new_L90_5(new3_L90_5),
	.new_L90_6(new3_L90_6),
	.new_L90_7(new3_L90_7),
	.new_L90_8(new3_L90_8),
	.new_L90_9(new3_L90_9),
	.new_L90_10(new3_L90_10),
	.new_L90_11(new3_L90_11),
	.new_L90_12(new3_L90_12),
	.new_L90_13(new3_L90_13),
	.new_L90_14(new3_L90_14),
	.new_L90_15(new3_L90_15),
	.new_L90_16(new3_L90_16),
	.new_L90_17(new3_L90_17),
	.new_L90_18(new3_L90_18),
	.new_L90_19(new3_L90_19),
	.new_L90_20(new3_L90_20),
	.new_L90_21(new3_L90_21),
	.new_L90_22(new3_L90_22),
	.new_L90_23(new3_L90_23),
	.new_L90_24(new3_L90_24),
	.new_L90_25(new3_L90_25),
	.new_L90_26(new3_L90_26),
	.new_L90_27(new3_L90_27),
	.new_L90_28(new3_L90_28),
	.new_L90_29(new3_L90_29),
	.new_L90_30(new3_L90_30),
	.new_L90_31(new3_L90_31),
	
	.new_L135_0(new3_L135_0),
	.new_L135_1(new3_L135_1),
	.new_L135_2(new3_L135_2),
	.new_L135_3(new3_L135_3),
	.new_L135_4(new3_L135_4),
	.new_L135_5(new3_L135_5),
	.new_L135_6(new3_L135_6),
	.new_L135_7(new3_L135_7),
	.new_L135_8(new3_L135_8),
	.new_L135_9(new3_L135_9),
	.new_L135_10(new3_L135_10),
	.new_L135_11(new3_L135_11),
	.new_L135_12(new3_L135_12),
	.new_L135_13(new3_L135_13),
	.new_L135_14(new3_L135_14),
	.new_L135_15(new3_L135_15),
	.new_L135_16(new3_L135_16),
	.new_L135_17(new3_L135_17),
	.new_L135_18(new3_L135_18),
	.new_L135_19(new3_L135_19),
	.new_L135_20(new3_L135_20),
	.new_L135_21(new3_L135_21),
	.new_L135_22(new3_L135_22),
	.new_L135_23(new3_L135_23),
	.new_L135_24(new3_L135_24),
	.new_L135_25(new3_L135_25),
	.new_L135_26(new3_L135_26),
	.new_L135_27(new3_L135_27),
	.new_L135_28(new3_L135_28),
	.new_L135_29(new3_L135_29),
	.new_L135_30(new3_L135_30),
	.new_L135_31(new3_L135_31),
	.en_disp(en_disp)
	);

	agg1 agg1_inst(
				.clk(clk),
				.rst(rst),
				.clken(clken),
				//.en_first(en_first),
				.L0_0(L_0[0][2]),
	         .L0_1(L_0[1][2]),
	         .L0_2(L_0[2][2]),
	         .L0_3(L_0[3][2]),
	         .L0_4(L_0[4][2]),
	         .L0_5(L_0[5][2]),
	         .L0_6(L_0[6][2]),
	         .L0_7(L_0[7][2]),
	         .L0_8(L_0[8][2]),
	         .L0_9(L_0[9][2]),
	         .L0_10(L_0[10][2]),
	         .L0_11(L_0[11][2]),
	         .L0_12(L_0[12][2]),
	         .L0_13(L_0[13][2]),
	         .L0_14(L_0[14][2]),
	         .L0_15(L_0[15][2]),
	         .L0_16(L_0[16][2]),
	         .L0_17(L_0[17][2]),
	         .L0_18(L_0[18][2]),
	         .L0_19(L_0[19][2]),
	         .L0_20(L_0[20][2]),
	         .L0_21(L_0[21][2]),
	         .L0_22(L_0[22][2]),
	         .L0_23(L_0[23][2]),
	         .L0_24(L_0[24][2]),
	         .L0_25(L_0[25][2]),
	         .L0_26(L_0[26][2]),
	         .L0_27(L_0[27][2]),
	         .L0_28(L_0[28][2]),
	         .L0_29(L_0[29][2]),
	         .L0_30(L_0[30][2]),
	         .L0_31(L_0[31][2]),

				.L45_0(L_45[0][2]),
	         .L45_1(L_45[1][2]),
	         .L45_2(L_45[2][2]),
	         .L45_3(L_45[3][2]),
	         .L45_4(L_45[4][2]),
	         .L45_5(L_45[5][2]),
	         .L45_6(L_45[6][2]),
	         .L45_7(L_45[7][2]),
	         .L45_8(L_45[8][2]),
	         .L45_9(L_45[9][2]),
	         .L45_10(L_45[10][2]),
	         .L45_11(L_45[11][2]),
	         .L45_12(L_45[12][2]),
	         .L45_13(L_45[13][2]),
	         .L45_14(L_45[14][2]),
	         .L45_15(L_45[15][2]),
	         .L45_16(L_45[16][2]),
	         .L45_17(L_45[17][2]),
	         .L45_18(L_45[18][2]),
	         .L45_19(L_45[19][2]),
	         .L45_20(L_45[20][2]),
	         .L45_21(L_45[21][2]),
	         .L45_22(L_45[22][2]),
	         .L45_23(L_45[23][2]),
	         .L45_24(L_45[24][2]),
	         .L45_25(L_45[25][2]),
	         .L45_26(L_45[26][2]),
	         .L45_27(L_45[27][2]),
	         .L45_28(L_45[28][2]),
	         .L45_29(L_45[29][2]),
	         .L45_30(L_45[30][2]),
	         .L45_31(L_45[31][2]),

				.L90_0(L_90[0][2]),
	         .L90_1(L_90[1][2]),
	         .L90_2(L_90[2][2]),
	         .L90_3(L_90[3][2]),
	         .L90_4(L_90[4][2]),
	         .L90_5(L_90[5][2]),
	         .L90_6(L_90[6][2]),
	         .L90_7(L_90[7][2]),
	         .L90_8(L_90[8][2]),
	         .L90_9(L_90[9][2]),
	         .L90_10(L_90[10][2]),
	         .L90_11(L_90[11][2]),
	         .L90_12(L_90[12][2]),
	         .L90_13(L_90[13][2]),
	         .L90_14(L_90[14][2]),
	         .L90_15(L_90[15][2]),
	         .L90_16(L_90[16][2]),
	         .L90_17(L_90[17][2]),
	         .L90_18(L_90[18][2]),
	         .L90_19(L_90[19][2]),
	         .L90_20(L_90[20][2]),
	         .L90_21(L_90[21][2]),
	         .L90_22(L_90[22][2]),
	         .L90_23(L_90[23][2]),
	         .L90_24(L_90[24][2]),
	         .L90_25(L_90[25][2]),
	         .L90_26(L_90[26][2]),
	         .L90_27(L_90[27][2]),
	         .L90_28(L_90[28][2]),
	         .L90_29(L_90[29][2]),
	         .L90_30(L_90[30][2]),
	         .L90_31(L_90[31][2]),
				
				.L135_0(L_135[0][2]),
	         .L135_1(L_135[1][2]),
	         .L135_2(L_135[2][2]),
	         .L135_3(L_135[3][2]),
	         .L135_4(L_135[4][2]),
	         .L135_5(L_135[5][2]),
	         .L135_6(L_135[6][2]),
	         .L135_7(L_135[7][2]),
	         .L135_8(L_135[8][2]),
	         .L135_9(L_135[9][2]),
	         .L135_10(L_135[10][2]),
	         .L135_11(L_135[11][2]),
	         .L135_12(L_135[12][2]),
	         .L135_13(L_135[13][2]),
	         .L135_14(L_135[14][2]),
	         .L135_15(L_135[15][2]),
	         .L135_16(L_135[16][2]),
	         .L135_17(L_135[17][2]),
	         .L135_18(L_135[18][2]),
	         .L135_19(L_135[19][2]),
	         .L135_20(L_135[20][2]),
	         .L135_21(L_135[21][2]),
	         .L135_22(L_135[22][2]),
	         .L135_23(L_135[23][2]),
	         .L135_24(L_135[24][2]),
	         .L135_25(L_135[25][2]),
	         .L135_26(L_135[26][2]),
	         .L135_27(L_135[27][2]),	
	         .L135_28(L_135[28][2]),
	         .L135_29(L_135[29][2]),
	         .L135_30(L_135[30][2]),
	         .L135_31(L_135[31][2]),		
				
			 
	
			 .new_L0_0(new2_L0_0),
	       .new_L0_1(new2_L0_1),
	       .new_L0_2(new2_L0_2),
	       .new_L0_3(new2_L0_3),
	       .new_L0_4(new2_L0_4),
	       .new_L0_5(new2_L0_5),
	       .new_L0_6(new2_L0_6),
	       .new_L0_7(new2_L0_7),
	       .new_L0_8(new2_L0_8),
	       .new_L0_9(new2_L0_9),
	       .new_L0_10(new2_L0_10),
	       .new_L0_11(new2_L0_11),
	       .new_L0_12(new2_L0_12),
	       .new_L0_13(new2_L0_13),
	       .new_L0_14(new2_L0_14),
	       .new_L0_15(new2_L0_15),
	       .new_L0_16(new2_L0_16),
	       .new_L0_17(new2_L0_17),
	       .new_L0_18(new2_L0_18),
	       .new_L0_19(new2_L0_19),
	       .new_L0_20(new2_L0_20),
	       .new_L0_21(new2_L0_21),
	       .new_L0_22(new2_L0_22),
	       .new_L0_23(new2_L0_23),
	       .new_L0_24(new2_L0_24),
	       .new_L0_25(new2_L0_25),
	       .new_L0_26(new2_L0_26),
	       .new_L0_27(new2_L0_27),
	       .new_L0_28(new2_L0_28),
	       .new_L0_29(new2_L0_29),
	       .new_L0_30(new2_L0_30),
	       .new_L0_31(new2_L0_31),
	       
	       .new_L45_0(new2_L45_0),
	       .new_L45_1(new2_L45_1),
	       .new_L45_2(new2_L45_2),
	       .new_L45_3(new2_L45_3),
	       .new_L45_4(new2_L45_4),
	       .new_L45_5(new2_L45_5),
	       .new_L45_6(new2_L45_6),
	       .new_L45_7(new2_L45_7),
	       .new_L45_8(new2_L45_8),
	       .new_L45_9(new2_L45_9),
	       .new_L45_10(new2_L45_10),
	       .new_L45_11(new2_L45_11),
	       .new_L45_12(new2_L45_12),
	       .new_L45_13(new2_L45_13),
	       .new_L45_14(new2_L45_14),
	       .new_L45_15(new2_L45_15),
	       .new_L45_16(new2_L45_16),
	       .new_L45_17(new2_L45_17),
	       .new_L45_18(new2_L45_18),
	       .new_L45_19(new2_L45_19),
	       .new_L45_20(new2_L45_20),
	       .new_L45_21(new2_L45_21),
	       .new_L45_22(new2_L45_22),
	       .new_L45_23(new2_L45_23),
	       .new_L45_24(new2_L45_24),
	       .new_L45_25(new2_L45_25),
	       .new_L45_26(new2_L45_26),
	       .new_L45_27(new2_L45_27),
	       .new_L45_28(new2_L45_28),
	       .new_L45_29(new2_L45_29),
	       .new_L45_30(new2_L45_30),
	       .new_L45_31(new2_L45_31),
	       
	       .new_L90_0(new2_L90_0),
	       .new_L90_1(new2_L90_1),
	       .new_L90_2(new2_L90_2),
	       .new_L90_3(new2_L90_3),
	       .new_L90_4(new2_L90_4),
	       .new_L90_5(new2_L90_5),
	       .new_L90_6(new2_L90_6),
	       .new_L90_7(new2_L90_7),
	       .new_L90_8(new2_L90_8),
	       .new_L90_9(new2_L90_9),
	       .new_L90_10(new2_L90_10),
	       .new_L90_11(new2_L90_11),
	       .new_L90_12(new2_L90_12),
	       .new_L90_13(new2_L90_13),
	       .new_L90_14(new2_L90_14),
	       .new_L90_15(new2_L90_15),
	       .new_L90_16(new2_L90_16),
	       .new_L90_17(new2_L90_17),
	       .new_L90_18(new2_L90_18),
	       .new_L90_19(new2_L90_19),
	       .new_L90_20(new2_L90_20),
	       .new_L90_21(new2_L90_21),
	       .new_L90_22(new2_L90_22),
	       .new_L90_23(new2_L90_23),
	       .new_L90_24(new2_L90_24),
	       .new_L90_25(new2_L90_25),
	       .new_L90_26(new2_L90_26),
	       .new_L90_27(new2_L90_27),
	       .new_L90_28(new2_L90_28),
	       .new_L90_29(new2_L90_29),
	       .new_L90_30(new2_L90_30),
	       .new_L90_31(new2_L90_31),
	       
	       .new_L135_0(new2_L135_0),
	       .new_L135_1(new2_L135_1),
	       .new_L135_2(new2_L135_2),
	       .new_L135_3(new2_L135_3),
	       .new_L135_4(new2_L135_4),
	       .new_L135_5(new2_L135_5),
	       .new_L135_6(new2_L135_6),
	       .new_L135_7(new2_L135_7),
	       .new_L135_8(new2_L135_8),
	       .new_L135_9(new2_L135_9),
	       .new_L135_10(new2_L135_10),
	       .new_L135_11(new2_L135_11),
	       .new_L135_12(new2_L135_12),
	       .new_L135_13(new2_L135_13),
	       .new_L135_14(new2_L135_14),
	       .new_L135_15(new2_L135_15),
	       .new_L135_16(new2_L135_16),
	       .new_L135_17(new2_L135_17),
	       .new_L135_18(new2_L135_18),
	       .new_L135_19(new2_L135_19),
	       .new_L135_20(new2_L135_20),
	       .new_L135_21(new2_L135_21),
	       .new_L135_22(new2_L135_22),
	       .new_L135_23(new2_L135_23),
	       .new_L135_24(new2_L135_24),
	       .new_L135_25(new2_L135_25),
	       .new_L135_26(new2_L135_26),
	       .new_L135_27(new2_L135_27),
	       .new_L135_28(new2_L135_28),
	       .new_L135_29(new2_L135_29),
	       .new_L135_30(new2_L135_30),
	       .new_L135_31(new2_L135_31),
			 .min_45(min_45)	
		);
		
		disparity  disparity_inst(
		.rst(rst),
		.clk(clk),
		.clken(clken),
		.en_disp(en_agg3),
		//0°
		.aggregateCost0_0(new2_L0_0),
		.aggregateCost0_1(new2_L0_1),
		.aggregateCost0_2(new2_L0_2), 
		.aggregateCost0_3(new2_L0_3),
		.aggregateCost0_4(new2_L0_4),
		.aggregateCost0_5(new2_L0_5), 
		.aggregateCost0_6(new2_L0_6),
		.aggregateCost0_7(new2_L0_7),
		.aggregateCost0_8(new2_L0_8), 
		.aggregateCost0_9(new2_L0_9),
		.aggregateCost0_10(new2_L0_10),
		.aggregateCost0_11(new2_L0_11), 
		.aggregateCost0_12(new2_L0_12),
		.aggregateCost0_13(new2_L0_13),
		.aggregateCost0_14(new2_L0_14), 
		.aggregateCost0_15(new2_L0_15),
		.aggregateCost0_16(new2_L0_16),
		.aggregateCost0_17(new2_L0_17), 
		.aggregateCost0_18(new2_L0_18),
		.aggregateCost0_19(new2_L0_19),
		.aggregateCost0_20(new2_L0_20), 
		.aggregateCost0_21(new2_L0_21),
		.aggregateCost0_22(new2_L0_22),
		.aggregateCost0_23(new2_L0_23), 
		.aggregateCost0_24(new2_L0_24), 
		.aggregateCost0_25(new2_L0_25),
		.aggregateCost0_26(new2_L0_26),
		.aggregateCost0_27(new2_L0_27), 
		.aggregateCost0_28(new2_L0_28), 
		.aggregateCost0_29(new2_L0_29),
		.aggregateCost0_30(new2_L0_30),
		.aggregateCost0_31(new2_L0_31), 
		//45°
		.aggregateCost1_0(new2_L45_0),
		.aggregateCost1_1(new2_L45_1),
		.aggregateCost1_2(new2_L45_2), 
		.aggregateCost1_3(new2_L45_3),
		.aggregateCost1_4(new2_L45_4),
		.aggregateCost1_5(new2_L45_5), 
		.aggregateCost1_6(new2_L45_6),
		.aggregateCost1_7(new2_L45_7),
		.aggregateCost1_8(new2_L45_8), 
		.aggregateCost1_9(new2_L45_9),
		.aggregateCost1_10(new2_L45_10),
		.aggregateCost1_11(new2_L45_11), 
		.aggregateCost1_12(new2_L45_12),
		.aggregateCost1_13(new2_L45_13),
		.aggregateCost1_14(new2_L45_14), 
		.aggregateCost1_15(new2_L45_15),
		.aggregateCost1_16(new2_L45_16),
		.aggregateCost1_17(new2_L45_17), 
		.aggregateCost1_18(new2_L45_18),
		.aggregateCost1_19(new2_L45_19),
		.aggregateCost1_20(new2_L45_20), 
		.aggregateCost1_21(new2_L45_21),
		.aggregateCost1_22(new2_L45_22),
		.aggregateCost1_23(new2_L45_23), 
		.aggregateCost1_24(new2_L45_24), 
		.aggregateCost1_25(new2_L45_25),
		.aggregateCost1_26(new2_L45_26),
		.aggregateCost1_27(new2_L45_27), 
		.aggregateCost1_28(new2_L45_28), 
		.aggregateCost1_29(new2_L45_29),
		.aggregateCost1_30(new2_L45_30),
		.aggregateCost1_31(new2_L45_31), 
		//90°
		.aggregateCost2_0(new2_L90_0),
		.aggregateCost2_1(new2_L90_1),
		.aggregateCost2_2(new2_L90_2), 
		.aggregateCost2_3(new2_L90_3),
		.aggregateCost2_4(new2_L90_4),
		.aggregateCost2_5(new2_L90_5), 
		.aggregateCost2_6(new2_L90_6),
		.aggregateCost2_7(new2_L90_7),
		.aggregateCost2_8(new2_L90_8), 
		.aggregateCost2_9(new2_L90_9),
		.aggregateCost2_10(new2_L90_10),
		.aggregateCost2_11(new2_L90_11), 
		.aggregateCost2_12(new2_L90_12),
		.aggregateCost2_13(new2_L90_13),
		.aggregateCost2_14(new2_L90_14), 
		.aggregateCost2_15(new2_L90_15),
		.aggregateCost2_16(new2_L90_16),
		.aggregateCost2_17(new2_L90_17), 
		.aggregateCost2_18(new2_L90_18),
		.aggregateCost2_19(new2_L90_19),
		.aggregateCost2_20(new2_L90_20), 
		.aggregateCost2_21(new2_L90_21),
		.aggregateCost2_22(new2_L90_22),
		.aggregateCost2_23(new2_L90_23), 
		.aggregateCost2_24(new2_L90_24), 
		.aggregateCost2_25(new2_L90_25),
		.aggregateCost2_26(new2_L90_26),
		.aggregateCost2_27(new2_L90_27), 
		.aggregateCost2_28(new2_L90_28), 
		.aggregateCost2_29(new2_L90_29),
		.aggregateCost2_30(new2_L90_30),
		.aggregateCost2_31(new2_L90_31), 
		//135°
		.aggregateCost3_0(new2_L135_0),
		.aggregateCost3_1(new2_L135_1),
		.aggregateCost3_2(new2_L135_2), 
		.aggregateCost3_3(new2_L135_3),
		.aggregateCost3_4(new2_L135_4),
		.aggregateCost3_5(new2_L135_5), 
		.aggregateCost3_6(new2_L135_6),
		.aggregateCost3_7(new2_L135_7),
		.aggregateCost3_8(new2_L135_8), 
		.aggregateCost3_9(new2_L135_9),
		.aggregateCost3_10(new2_L135_10),
		.aggregateCost3_11(new2_L135_11), 
		.aggregateCost3_12(new2_L135_12),
		.aggregateCost3_13(new2_L135_13),
		.aggregateCost3_14(new2_L135_14), 
		.aggregateCost3_15(new2_L135_15),
		.aggregateCost3_16(new2_L135_16),
		.aggregateCost3_17(new2_L135_17), 
		.aggregateCost3_18(new2_L135_18),
		.aggregateCost3_19(new2_L135_19),
		.aggregateCost3_20(new2_L135_20), 
		.aggregateCost3_21(new2_L135_21),
		.aggregateCost3_22(new2_L135_22),
		.aggregateCost3_23(new2_L135_23), 
		.aggregateCost3_24(new2_L135_24), 
		.aggregateCost3_25(new2_L135_25),
		.aggregateCost3_26(new2_L135_26),
		.aggregateCost3_27(new2_L135_27), 
		.aggregateCost3_28(new2_L135_28), 
		.aggregateCost3_29(new2_L135_29),
		.aggregateCost3_30(new2_L135_30),
		.aggregateCost3_31(new2_L135_31), 
		.disp(disp),
		.valid_final(valid_final)
		);
		/*
		filter filter_u(
		.clk(clk),
		.rst(rst),
		.valid_final(valid_final0),
		.disp(disp0),
		.disp_new(disp),
		.valid_filter(valid_final)
		);
		*/
		integer count=0;
//    always @(*)begin
//    if(disp_temp === 8'bxxxxxxxx) disp=0;
//    else disp = disp_temp;
//    end
    
		always@(posedge clk or negedge rst)begin
			if(rst==0)begin
			change<=0;
			en_agg4<=0;
			en_first<=0;
			rst0<=0;
			end
			else if(clken) begin
			if(valid==1)begin
			count<=count+1;
			//if(count=width)begin
			//en_agg4<=1;
			//end
			if(count%(width)==0&&count>=1)begin
			en_first<=1;
			if(count==width*height)begin
			count<=1;
			end
			end
			else begin
			en_first<=0;
			end
			///////////第一行//////////
			if(count>=width+2)begin
			change<=1;
			end
			else begin
			change<=0;
			end
			//////////////////////////
			//////////rst0////////////
			if(count>=width)begin
			rst0<=1;
			en_agg4<=1;
			end
			else begin
			rst0<=0;
			en_agg4<=0;
			end
			//////////////////////////
			end
			end
			else begin
				change<=change;
				en_agg4<=en_agg4;
				en_first<=en_first;
				rst0<=rst0;
			end
		end
endmodule 