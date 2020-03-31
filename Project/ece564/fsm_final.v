/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : K-2015.06-SP1
// Date      : Thu Nov 21 14:18:08 2019
/////////////////////////////////////////////////////////////


module ECE564MyDesign ( xxx__dut__run, dut__xxx__busy, clk, reset_b, 
        dut__sram__write_address, dut__sram__write_data, 
        dut__sram__write_enable, dut__sram__read_address, sram__dut__read_data, 
        dut__fmem__read_address, fmem__dut__read_data, dut__gmem__read_address, 
        gmem__dut__read_data, dut__imem__read_address, imem__dut__read_data, 
        dut__omem__read_address, omem__dut__read_data, 
        dut__tanhmem__read_address, tanhmem__dut__read_data );
  output [11:0] dut__sram__write_address;
  output [15:0] dut__sram__write_data;
  output [11:0] dut__sram__read_address;
  input [15:0] sram__dut__read_data;
  output [11:0] dut__fmem__read_address;
  input [15:0] fmem__dut__read_data;
  output [11:0] dut__gmem__read_address;
  input [15:0] gmem__dut__read_data;
  output [11:0] dut__imem__read_address;
  input [15:0] imem__dut__read_data;
  output [11:0] dut__omem__read_address;
  input [15:0] omem__dut__read_data;
  output [11:0] dut__tanhmem__read_address;
  input [15:0] tanhmem__dut__read_data;
  input xxx__dut__run, clk, reset_b;
  output dut__xxx__busy, dut__sram__write_enable;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, mult_ripple_flag, N25,
         N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39,
         N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53,
         N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67,
         N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81,
         done, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94,
         tanh_done, N95, wait_done, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N133, N134, N135, N136,
         N137, N138, N139, N140, N141, N142, N143, N144, N145, N146, N147,
         N148, N149, N150, N151, N152, N153, N154, N155, N156, N157, N158,
         N159, N160, N161, N162, N163, N164, N165, N166, N167, N168, N169,
         N170, N171, N172, N173, N174, N175, N176, N177, N178, N179, N180,
         N181, N182, N183, N184, N185, N186, N187, N188, N189, N190, N191,
         N192, N193, N194, N195, N196, N197, N198, N199, N200, N201, N202,
         N203, N204, N205, N206, N207, N208, N209, N210, N211, N212, N213,
         N214, N215, N216, N217, N218, N219, N220, N221, N222, N223, N224,
         N225, N226, N227, N228, N229, N230, N231, N232, N233, N234, N235,
         N236, N237, N238, N239, N240, N241, N242, N243, N244, N245, N246,
         N247, N248, N249, N250, N251, N252, N253, N254, N255, N256, N257,
         N258, N259, N260, N261, N262, N263, N264, N265, N266, N267, N268,
         N269, N270, N271, N272, N273, N274, N275, N276, N277, N278, N279,
         N280, N281, N282, N283, N284, N285, N286, N287, N288, N289, N290,
         N291, N292, N293, N294, N295, N296, N297, N298, N299, N300, N301,
         N302, N303, N304, N305, N306, N307, N308, N309, N310, N311, N312,
         N313, N314, N315, N316, N317, N318, N319, N320, N321, N322, N323,
         N324, N325, N326, N327, N328, N329, N330, N331, N332, N333, N334,
         N335, N336, N337, N338, N339, N340, N341, N342, N343, N344, N345,
         N346, N347, N348, N349, N350, N351, N352, N353, N354, N355, N356,
         N357, N358, N359, N360, N361, N362, N363, N364, N365, N366, N367,
         N368, N369, N370, N371, N372, N373, N374, N375, N376, N377, N378,
         N379, N380, N381, N382, N383, N384, N385, N386, N387, N388, N389,
         N390, N391, N392, N393, N394, N395, N396, N397, N398, N399, N400,
         N401, N402, N403, N404, N405, N406, N407, N408, N409, N410, N411,
         N412, N413, N414, N415, N416, N417, N418, N419, N420, N421, N422,
         N423, N424, N425, N426, N427, N428, N429, N430, N431, N432, N433,
         N434, N435, N436, N437, N438, N439, N440, N441, N442, N443, N444,
         N445, N446, N447, N448, N449, N450, N451, N452, N453, N454, N455,
         N456, N457, N458, N459, N460, N461, N462, N463, N464, N465, N466,
         N467, N468, N469, N470, N471, N472, N473, N474, N475, N476, N477,
         N478, N479, N480, N481, N482, N483, N484, N485, N486, N487, N488,
         N489, N490, N491, N492, N493, N494, N495, N496, N497, N498, N499,
         N500, N501, N502, N503, N504, N505, N506, N507, N508, N509, N510,
         N511, N512, N513, N514, N515, N516, N517, N518, N519, N520, N521,
         N522, N523, N524, N525, N526, N527, N528, N529, N530, N531, N532,
         N533, N534, N535, N536, N537, N538, N539, N540, N541, N542, N543,
         N544, N545, N546, N547, N548, N549, N550, N551, N552, N553, N554,
         N555, N556, N557, N558, N559, N560, N561, N562, N563, N564, N565,
         N566, N567, N568, N569, N570, N571, N572, N573, N574, N575, N576,
         N577, N578, N579, N580, N581, N582, net117, net118, net119, net120,
         net121, net122, net123, net124, net125, net126, net127, net128,
         net129, net130, net131, net132, net133, net134, net135, net136,
         net137, net138, net139, net140, net141, net142, net143, net144,
         net145, net146, net147, net148, net149, net150, net151, net152,
         net153, net154, net155, net156, net157, net158, net159, net160,
         net161, net162;
  wire   [12:0] counter;
  wire   [4:0] mult_counter;
  wire   [34:0] accum;
  wire   [2:0] current_state;
  wire   [34:0] tanh_addr;
  wire   [2:0] interpolate;
  wire   [11:0] x_0;
  wire   [15:0] y_0;
  wire   [33:13] tanh_addr_comp;
  wire   [15:0] y_1;
  wire   [11:0] write_addr;
  wire   [34:0] wx_accum;
  wire   [32:17] g;
  wire   [2:0] next_state;

  GTECH_AND2 C228 ( .A(N97), .B(N98), .Z(N100) );
  GTECH_AND2 C229 ( .A(N100), .B(N99), .Z(N101) );
  GTECH_OR2 C231 ( .A(interpolate[2]), .B(interpolate[1]), .Z(N102) );
  GTECH_OR2 C232 ( .A(N102), .B(N99), .Z(N103) );
  GTECH_OR2 C235 ( .A(interpolate[2]), .B(N98), .Z(N105) );
  GTECH_OR2 C236 ( .A(N105), .B(interpolate[0]), .Z(N106) );
  GTECH_OR2 C240 ( .A(interpolate[2]), .B(N98), .Z(N108) );
  GTECH_OR2 C241 ( .A(N108), .B(N99), .Z(N109) );
  GTECH_OR2 C244 ( .A(N97), .B(interpolate[1]), .Z(N111) );
  GTECH_OR2 C245 ( .A(N111), .B(interpolate[0]), .Z(N112) );
  GTECH_OR2 C249 ( .A(N97), .B(interpolate[1]), .Z(N114) );
  GTECH_OR2 C250 ( .A(N114), .B(N99), .Z(N115) );
  GTECH_OR2 C254 ( .A(N97), .B(N98), .Z(N117) );
  GTECH_OR2 C255 ( .A(N117), .B(interpolate[0]), .Z(N118) );
  GTECH_AND2 C257 ( .A(interpolate[2]), .B(interpolate[1]), .Z(N120) );
  GTECH_AND2 C258 ( .A(N120), .B(interpolate[0]), .Z(N121) );
  \**SEQGEN**  y_0_reg_15_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[15]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_0[15]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  y_0_reg_14_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[14]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_0[14]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  y_0_reg_13_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[13]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_0[13]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  y_0_reg_12_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[12]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_0[12]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  y_0_reg_11_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[11]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_0[11]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  y_0_reg_10_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[10]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_0[10]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  y_0_reg_9_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[9]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_0[9]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  y_0_reg_8_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[8]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_0[8]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  y_0_reg_7_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[7]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_0[7]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  y_0_reg_6_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[6]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_0[6]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  y_0_reg_5_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[5]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_0[5]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  y_0_reg_4_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[4]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_0[4]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  y_0_reg_3_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[3]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_0[3]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  y_0_reg_2_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[2]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_0[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  y_0_reg_1_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[1]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_0[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  y_0_reg_0_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[0]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_0[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  y_1_reg_15_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[15]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_1[15]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  y_1_reg_14_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[14]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_1[14]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  y_1_reg_13_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[13]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_1[13]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  y_1_reg_12_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[12]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_1[12]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  y_1_reg_11_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[11]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_1[11]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  y_1_reg_10_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[10]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_1[10]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  y_1_reg_9_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[9]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_1[9]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  y_1_reg_8_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[8]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_1[8]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  y_1_reg_7_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[7]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_1[7]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  y_1_reg_6_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[6]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_1[6]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  y_1_reg_5_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[5]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_1[5]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  y_1_reg_4_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[4]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_1[4]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  y_1_reg_3_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[3]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_1[3]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  y_1_reg_2_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[2]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_1[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  y_1_reg_1_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[1]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_1[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  y_1_reg_0_ ( .clear(1'b0), .preset(1'b0), .next_state(
        tanhmem__dut__read_data[0]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(y_1[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  g_reg_32_ ( .clear(1'b0), .preset(1'b0), .next_state(N429), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(g[32]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N488) );
  \**SEQGEN**  g_reg_31_ ( .clear(1'b0), .preset(1'b0), .next_state(N428), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(g[31]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N488) );
  \**SEQGEN**  g_reg_30_ ( .clear(1'b0), .preset(1'b0), .next_state(N427), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(g[30]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N488) );
  \**SEQGEN**  g_reg_29_ ( .clear(1'b0), .preset(1'b0), .next_state(N426), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(g[29]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N488) );
  \**SEQGEN**  g_reg_28_ ( .clear(1'b0), .preset(1'b0), .next_state(N425), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(g[28]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N488) );
  \**SEQGEN**  g_reg_27_ ( .clear(1'b0), .preset(1'b0), .next_state(N424), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(g[27]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N488) );
  \**SEQGEN**  g_reg_26_ ( .clear(1'b0), .preset(1'b0), .next_state(N423), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(g[26]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N488) );
  \**SEQGEN**  g_reg_25_ ( .clear(1'b0), .preset(1'b0), .next_state(N422), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(g[25]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N488) );
  \**SEQGEN**  g_reg_24_ ( .clear(1'b0), .preset(1'b0), .next_state(N421), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(g[24]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N488) );
  \**SEQGEN**  g_reg_23_ ( .clear(1'b0), .preset(1'b0), .next_state(N420), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(g[23]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N488) );
  \**SEQGEN**  g_reg_22_ ( .clear(1'b0), .preset(1'b0), .next_state(N419), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(g[22]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N488) );
  \**SEQGEN**  g_reg_21_ ( .clear(1'b0), .preset(1'b0), .next_state(N418), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(g[21]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N488) );
  \**SEQGEN**  g_reg_20_ ( .clear(1'b0), .preset(1'b0), .next_state(N417), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(g[20]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N488) );
  \**SEQGEN**  g_reg_19_ ( .clear(1'b0), .preset(1'b0), .next_state(N416), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(g[19]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N488) );
  \**SEQGEN**  g_reg_18_ ( .clear(1'b0), .preset(1'b0), .next_state(N415), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(g[18]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N488) );
  \**SEQGEN**  g_reg_17_ ( .clear(1'b0), .preset(1'b0), .next_state(N414), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(g[17]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N488) );
  \**SEQGEN**  counter_reg_12_ ( .clear(1'b0), .preset(1'b0), .next_state(N94), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(counter[12]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N435) );
  \**SEQGEN**  counter_reg_11_ ( .clear(1'b0), .preset(1'b0), .next_state(N93), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(counter[11]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N435) );
  \**SEQGEN**  counter_reg_10_ ( .clear(1'b0), .preset(1'b0), .next_state(N92), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(counter[10]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N435) );
  \**SEQGEN**  counter_reg_9_ ( .clear(1'b0), .preset(1'b0), .next_state(N91), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(counter[9]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N435) );
  \**SEQGEN**  counter_reg_8_ ( .clear(1'b0), .preset(1'b0), .next_state(N90), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(counter[8]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N435) );
  \**SEQGEN**  counter_reg_7_ ( .clear(1'b0), .preset(1'b0), .next_state(N89), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(counter[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N435) );
  \**SEQGEN**  counter_reg_6_ ( .clear(1'b0), .preset(1'b0), .next_state(N88), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(counter[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N435) );
  \**SEQGEN**  counter_reg_5_ ( .clear(1'b0), .preset(1'b0), .next_state(N87), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(counter[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N435) );
  \**SEQGEN**  counter_reg_4_ ( .clear(1'b0), .preset(1'b0), .next_state(N86), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(counter[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N435) );
  \**SEQGEN**  counter_reg_3_ ( .clear(1'b0), .preset(1'b0), .next_state(N85), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(counter[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N435) );
  \**SEQGEN**  counter_reg_2_ ( .clear(1'b0), .preset(1'b0), .next_state(N84), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(counter[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N435) );
  \**SEQGEN**  counter_reg_1_ ( .clear(1'b0), .preset(1'b0), .next_state(N83), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(counter[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N435) );
  \**SEQGEN**  counter_reg_0_ ( .clear(1'b0), .preset(1'b0), .next_state(N82), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(counter[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N435) );
  \**SEQGEN**  dut__tanhmem__read_address_reg_11_ ( .clear(1'b0), .preset(1'b0), .next_state(N409), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        dut__tanhmem__read_address[11]), .synch_clear(1'b0), .synch_preset(
        1'b0), .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  dut__tanhmem__read_address_reg_10_ ( .clear(1'b0), .preset(1'b0), .next_state(N408), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        dut__tanhmem__read_address[10]), .synch_clear(1'b0), .synch_preset(
        1'b0), .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  dut__tanhmem__read_address_reg_9_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N407), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(dut__tanhmem__read_address[9]), .synch_clear(1'b0), .synch_preset(
        1'b0), .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  dut__tanhmem__read_address_reg_8_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N406), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(dut__tanhmem__read_address[8]), .synch_clear(1'b0), .synch_preset(
        1'b0), .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  dut__tanhmem__read_address_reg_7_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N405), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(dut__tanhmem__read_address[7]), .synch_clear(1'b0), .synch_preset(
        1'b0), .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  dut__tanhmem__read_address_reg_6_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N404), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(dut__tanhmem__read_address[6]), .synch_clear(1'b0), .synch_preset(
        1'b0), .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  dut__tanhmem__read_address_reg_5_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N403), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(dut__tanhmem__read_address[5]), .synch_clear(1'b0), .synch_preset(
        1'b0), .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  dut__tanhmem__read_address_reg_4_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N402), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(dut__tanhmem__read_address[4]), .synch_clear(1'b0), .synch_preset(
        1'b0), .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  dut__tanhmem__read_address_reg_3_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N401), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(dut__tanhmem__read_address[3]), .synch_clear(1'b0), .synch_preset(
        1'b0), .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  dut__tanhmem__read_address_reg_2_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N400), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(dut__tanhmem__read_address[2]), .synch_clear(1'b0), .synch_preset(
        1'b0), .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  dut__tanhmem__read_address_reg_1_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N399), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(dut__tanhmem__read_address[1]), .synch_clear(1'b0), .synch_preset(
        1'b0), .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  dut__tanhmem__read_address_reg_0_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N398), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(dut__tanhmem__read_address[0]), .synch_clear(1'b0), .synch_preset(
        1'b0), .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  gram_address_reg_11_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(dut__gmem__read_address[11]), .synch_clear(1'b0), .synch_preset(
        1'b0), .synch_toggle(1'b0), .synch_enable(N435) );
  \**SEQGEN**  gram_address_reg_10_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(dut__gmem__read_address[10]), .synch_clear(1'b0), .synch_preset(
        1'b0), .synch_toggle(1'b0), .synch_enable(N435) );
  \**SEQGEN**  gram_address_reg_9_ ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        dut__gmem__read_address[9]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N435) );
  \**SEQGEN**  gram_address_reg_8_ ( .clear(1'b0), .preset(1'b0), .next_state(
        counter[7]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        dut__gmem__read_address[8]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N435) );
  \**SEQGEN**  gram_address_reg_7_ ( .clear(1'b0), .preset(1'b0), .next_state(
        counter[6]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        dut__gmem__read_address[7]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N435) );
  \**SEQGEN**  gram_address_reg_6_ ( .clear(1'b0), .preset(1'b0), .next_state(
        counter[5]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        dut__gmem__read_address[6]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N435) );
  \**SEQGEN**  gram_address_reg_5_ ( .clear(1'b0), .preset(1'b0), .next_state(
        counter[4]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        dut__gmem__read_address[5]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N435) );
  \**SEQGEN**  gram_address_reg_4_ ( .clear(1'b0), .preset(1'b0), .next_state(
        counter[3]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        dut__gmem__read_address[4]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N435) );
  \**SEQGEN**  gram_address_reg_3_ ( .clear(1'b0), .preset(1'b0), .next_state(
        counter[2]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        dut__gmem__read_address[3]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N435) );
  \**SEQGEN**  gram_address_reg_2_ ( .clear(1'b0), .preset(1'b0), .next_state(
        counter[1]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        dut__gmem__read_address[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N435) );
  \**SEQGEN**  gram_address_reg_1_ ( .clear(1'b0), .preset(1'b0), .next_state(
        counter[0]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        dut__gmem__read_address[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N435) );
  \**SEQGEN**  gram_address_reg_0_ ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        dut__gmem__read_address[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N435) );
  \**SEQGEN**  x_0_reg_11_ ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(x_0[11]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N486) );
  \**SEQGEN**  x_0_reg_10_ ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(x_0[10]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N486) );
  \**SEQGEN**  x_0_reg_9_ ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(x_0[9]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N486) );
  \**SEQGEN**  x_0_reg_8_ ( .clear(1'b0), .preset(1'b0), .next_state(N396), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(x_0[8]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N486) );
  \**SEQGEN**  x_0_reg_7_ ( .clear(1'b0), .preset(1'b0), .next_state(N395), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(x_0[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N486) );
  \**SEQGEN**  x_0_reg_6_ ( .clear(1'b0), .preset(1'b0), .next_state(N394), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(x_0[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N486) );
  \**SEQGEN**  x_0_reg_5_ ( .clear(1'b0), .preset(1'b0), .next_state(N393), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(x_0[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N486) );
  \**SEQGEN**  x_0_reg_4_ ( .clear(1'b0), .preset(1'b0), .next_state(N392), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(x_0[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N486) );
  \**SEQGEN**  x_0_reg_3_ ( .clear(1'b0), .preset(1'b0), .next_state(N391), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(x_0[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N486) );
  \**SEQGEN**  x_0_reg_2_ ( .clear(1'b0), .preset(1'b0), .next_state(N390), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(x_0[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N486) );
  \**SEQGEN**  x_0_reg_1_ ( .clear(1'b0), .preset(1'b0), .next_state(N389), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(x_0[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N486) );
  \**SEQGEN**  x_0_reg_0_ ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(x_0[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N486) );
  \**SEQGEN**  done_reg ( .clear(1'b0), .preset(1'b0), .next_state(1'b1), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(done), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N478) );
  \**SEQGEN**  write_addr_reg_11_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N364), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        write_addr[11]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  write_addr_reg_10_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N363), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        write_addr[10]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  write_addr_reg_9_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N362), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        write_addr[9]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  write_addr_reg_8_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N361), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        write_addr[8]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  write_addr_reg_7_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N360), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        write_addr[7]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  write_addr_reg_6_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N359), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        write_addr[6]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  write_addr_reg_5_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N358), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        write_addr[5]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  write_addr_reg_4_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N357), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        write_addr[4]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  write_addr_reg_3_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N356), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        write_addr[3]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  write_addr_reg_2_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N355), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        write_addr[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  write_addr_reg_1_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N354), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        write_addr[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  write_addr_reg_0_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N353), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        write_addr[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  tanh_addr_comp_reg_33_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N385), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tanh_addr_comp[33]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N485) );
  \**SEQGEN**  tanh_addr_comp_reg_32_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N384), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tanh_addr_comp[32]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N485) );
  \**SEQGEN**  tanh_addr_comp_reg_31_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N383), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tanh_addr_comp[31]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N485) );
  \**SEQGEN**  tanh_addr_comp_reg_30_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N382), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tanh_addr_comp[30]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N485) );
  \**SEQGEN**  tanh_addr_comp_reg_29_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N381), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tanh_addr_comp[29]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N485) );
  \**SEQGEN**  tanh_addr_comp_reg_28_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N380), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tanh_addr_comp[28]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N485) );
  \**SEQGEN**  tanh_addr_comp_reg_27_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N379), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tanh_addr_comp[27]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N485) );
  \**SEQGEN**  tanh_addr_comp_reg_26_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N378), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tanh_addr_comp[26]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N485) );
  \**SEQGEN**  tanh_addr_comp_reg_25_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N377), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tanh_addr_comp[25]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N485) );
  \**SEQGEN**  tanh_addr_comp_reg_24_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N376), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tanh_addr_comp[24]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N485) );
  \**SEQGEN**  tanh_addr_comp_reg_23_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N375), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tanh_addr_comp[23]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N485) );
  \**SEQGEN**  tanh_addr_comp_reg_22_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N374), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tanh_addr_comp[22]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N485) );
  \**SEQGEN**  tanh_addr_comp_reg_21_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N373), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tanh_addr_comp[21]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N485) );
  \**SEQGEN**  tanh_addr_comp_reg_20_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N372), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tanh_addr_comp[20]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N485) );
  \**SEQGEN**  tanh_addr_comp_reg_19_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N371), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tanh_addr_comp[19]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N485) );
  \**SEQGEN**  tanh_addr_comp_reg_18_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N370), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tanh_addr_comp[18]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N485) );
  \**SEQGEN**  tanh_addr_comp_reg_17_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N369), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tanh_addr_comp[17]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N485) );
  \**SEQGEN**  tanh_addr_comp_reg_16_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N368), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tanh_addr_comp[16]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N485) );
  \**SEQGEN**  tanh_addr_comp_reg_15_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N367), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tanh_addr_comp[15]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N485) );
  \**SEQGEN**  tanh_addr_comp_reg_14_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N366), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tanh_addr_comp[14]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N485) );
  \**SEQGEN**  tanh_addr_comp_reg_13_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N365), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tanh_addr_comp[13]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N485) );
  \**SEQGEN**  mult_ripple_flag_reg ( .clear(1'b0), .preset(1'b0), 
        .next_state(N575), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(mult_ripple_flag), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N484) );
  \**SEQGEN**  tanh_done_reg ( .clear(1'b0), .preset(1'b0), .next_state(N582), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(tanh_done), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N434) );
  \**SEQGEN**  dut__sram__write_enable_reg ( .clear(1'b0), .preset(1'b0), 
        .next_state(N582), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(dut__sram__write_enable), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N434) );
  \**SEQGEN**  interpolate_reg_2_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N483), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        interpolate[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N479) );
  \**SEQGEN**  interpolate_reg_1_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N482), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        interpolate[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N479) );
  \**SEQGEN**  interpolate_reg_0_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N481), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        interpolate[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N479) );
  \**SEQGEN**  wait_done_reg ( .clear(1'b0), .preset(1'b0), .next_state(N575), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wait_done), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N479) );
  \**SEQGEN**  tanh_addr_reg_34_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[34]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[34]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_33_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[33]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[33]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_32_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[32]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[32]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_31_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[31]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[31]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_30_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[30]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[30]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_29_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[29]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[29]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_28_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[28]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[28]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_27_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[27]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[27]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_26_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[26]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[26]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_25_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[25]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[25]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_24_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[24]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[24]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_23_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[23]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[23]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_22_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[22]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[22]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_21_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[21]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[21]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_20_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[20]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[20]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_19_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[19]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[19]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_18_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[18]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[18]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_17_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[17]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[17]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_16_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[16]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[16]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_15_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[15]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[15]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_14_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[14]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[14]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_13_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[13]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[13]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_12_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[12]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[12]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_11_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[11]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[11]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_10_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[10]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[10]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_9_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[9]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[9]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_8_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[8]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[8]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_7_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[7]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_6_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[6]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_5_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[5]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_4_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[4]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_3_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[3]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_2_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[2]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_1_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[1]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N480) );
  \**SEQGEN**  tanh_addr_reg_0_ ( .clear(1'b0), .preset(1'b0), .next_state(
        accum[0]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tanh_addr[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N480) );
  \**SEQGEN**  wx_accum_reg_34_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N477), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        wx_accum[34]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_33_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N476), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        wx_accum[33]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_32_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N475), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        wx_accum[32]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_31_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N474), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        wx_accum[31]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_30_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N473), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        wx_accum[30]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_29_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N472), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        wx_accum[29]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_28_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N471), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        wx_accum[28]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_27_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N470), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        wx_accum[27]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_26_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N469), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        wx_accum[26]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_25_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N468), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        wx_accum[25]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_24_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N467), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        wx_accum[24]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_23_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N466), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        wx_accum[23]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_22_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N465), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        wx_accum[22]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_21_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N464), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        wx_accum[21]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_20_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N463), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        wx_accum[20]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_19_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N462), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        wx_accum[19]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_18_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N461), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        wx_accum[18]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_17_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N460), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        wx_accum[17]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_16_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N459), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        wx_accum[16]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_15_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N458), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        wx_accum[15]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_14_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N457), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        wx_accum[14]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_13_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N456), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        wx_accum[13]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_12_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N455), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        wx_accum[12]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_11_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N454), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        wx_accum[11]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_10_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N453), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        wx_accum[10]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_9_ ( .clear(1'b0), .preset(1'b0), .next_state(N452), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wx_accum[9]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_8_ ( .clear(1'b0), .preset(1'b0), .next_state(N451), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wx_accum[8]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_7_ ( .clear(1'b0), .preset(1'b0), .next_state(N450), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wx_accum[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_6_ ( .clear(1'b0), .preset(1'b0), .next_state(N449), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wx_accum[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_5_ ( .clear(1'b0), .preset(1'b0), .next_state(N448), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wx_accum[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_4_ ( .clear(1'b0), .preset(1'b0), .next_state(N447), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wx_accum[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_3_ ( .clear(1'b0), .preset(1'b0), .next_state(N446), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wx_accum[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_2_ ( .clear(1'b0), .preset(1'b0), .next_state(N445), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wx_accum[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_1_ ( .clear(1'b0), .preset(1'b0), .next_state(N444), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wx_accum[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N442) );
  \**SEQGEN**  wx_accum_reg_0_ ( .clear(1'b0), .preset(1'b0), .next_state(N443), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wx_accum[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N442) );
  \**SEQGEN**  sram_address_reg_11_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(dut__sram__read_address[11]), .synch_clear(1'b0), .synch_preset(
        1'b0), .synch_toggle(1'b0), .synch_enable(N435) );
  \**SEQGEN**  sram_address_reg_10_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(dut__sram__read_address[10]), .synch_clear(1'b0), .synch_preset(
        1'b0), .synch_toggle(1'b0), .synch_enable(N435) );
  \**SEQGEN**  sram_address_reg_9_ ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        dut__sram__read_address[9]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N435) );
  \**SEQGEN**  sram_address_reg_8_ ( .clear(1'b0), .preset(1'b0), .next_state(
        counter[11]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        dut__sram__read_address[8]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N435) );
  \**SEQGEN**  sram_address_reg_7_ ( .clear(1'b0), .preset(1'b0), .next_state(
        counter[10]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        dut__sram__read_address[7]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N435) );
  \**SEQGEN**  sram_address_reg_6_ ( .clear(1'b0), .preset(1'b0), .next_state(
        counter[9]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        dut__sram__read_address[6]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N435) );
  \**SEQGEN**  sram_address_reg_5_ ( .clear(1'b0), .preset(1'b0), .next_state(
        counter[8]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        dut__sram__read_address[5]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N435) );
  \**SEQGEN**  sram_address_reg_4_ ( .clear(1'b0), .preset(1'b0), .next_state(
        counter[3]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        dut__sram__read_address[4]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N435) );
  \**SEQGEN**  sram_address_reg_3_ ( .clear(1'b0), .preset(1'b0), .next_state(
        counter[2]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        dut__sram__read_address[3]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N435) );
  \**SEQGEN**  sram_address_reg_2_ ( .clear(1'b0), .preset(1'b0), .next_state(
        counter[1]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        dut__sram__read_address[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N435) );
  \**SEQGEN**  sram_address_reg_1_ ( .clear(1'b0), .preset(1'b0), .next_state(
        counter[0]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        dut__sram__read_address[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N435) );
  \**SEQGEN**  sram_address_reg_0_ ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        dut__sram__read_address[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N435) );
  \**SEQGEN**  dut__sram__write_data_reg_15_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(g[32]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(dut__sram__write_data[15]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  dut__sram__write_data_reg_14_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(g[31]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(dut__sram__write_data[14]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  dut__sram__write_data_reg_13_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(g[30]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(dut__sram__write_data[13]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  dut__sram__write_data_reg_12_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(g[29]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(dut__sram__write_data[12]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  dut__sram__write_data_reg_11_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(g[28]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(dut__sram__write_data[11]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  dut__sram__write_data_reg_10_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(g[27]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(dut__sram__write_data[10]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  dut__sram__write_data_reg_9_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(g[26]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(dut__sram__write_data[9]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  dut__sram__write_data_reg_8_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(g[25]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(dut__sram__write_data[8]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  dut__sram__write_data_reg_7_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(g[24]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(dut__sram__write_data[7]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  dut__sram__write_data_reg_6_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(g[23]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(dut__sram__write_data[6]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  dut__sram__write_data_reg_5_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(g[22]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(dut__sram__write_data[5]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  dut__sram__write_data_reg_4_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(g[21]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(dut__sram__write_data[4]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  dut__sram__write_data_reg_3_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(g[20]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(dut__sram__write_data[3]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  dut__sram__write_data_reg_2_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(g[19]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(dut__sram__write_data[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  dut__sram__write_data_reg_1_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(g[18]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(dut__sram__write_data[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  dut__sram__write_data_reg_0_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(g[17]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(dut__sram__write_data[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  mult_counter_reg_4_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N440), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        mult_counter[4]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N441) );
  \**SEQGEN**  mult_counter_reg_3_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N439), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        mult_counter[3]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N441) );
  \**SEQGEN**  mult_counter_reg_2_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N438), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        mult_counter[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N441) );
  \**SEQGEN**  mult_counter_reg_1_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N437), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        mult_counter[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N441) );
  \**SEQGEN**  mult_counter_reg_0_ ( .clear(1'b0), .preset(1'b0), .next_state(
        N436), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        mult_counter[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N441) );
  \**SEQGEN**  dut__sram__write_address_reg_11_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(write_addr[11]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(dut__sram__write_address[11]), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  dut__sram__write_address_reg_10_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(write_addr[10]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(dut__sram__write_address[10]), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  dut__sram__write_address_reg_9_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(write_addr[9]), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(dut__sram__write_address[9]), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  dut__sram__write_address_reg_8_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(write_addr[8]), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(dut__sram__write_address[8]), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  dut__sram__write_address_reg_7_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(write_addr[7]), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(dut__sram__write_address[7]), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  dut__sram__write_address_reg_6_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(write_addr[6]), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(dut__sram__write_address[6]), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  dut__sram__write_address_reg_5_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(write_addr[5]), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(dut__sram__write_address[5]), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  dut__sram__write_address_reg_4_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(write_addr[4]), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(dut__sram__write_address[4]), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  dut__sram__write_address_reg_3_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(write_addr[3]), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(dut__sram__write_address[3]), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  dut__sram__write_address_reg_2_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(write_addr[2]), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(dut__sram__write_address[2]), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  dut__sram__write_address_reg_1_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(write_addr[1]), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(dut__sram__write_address[1]), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  dut__sram__write_address_reg_0_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(write_addr[0]), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(dut__sram__write_address[0]), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  current_state_reg_2_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N528), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(current_state[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  current_state_reg_1_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N527), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(current_state[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  current_state_reg_0_ ( .clear(1'b0), .preset(1'b0), 
        .next_state(N526), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(current_state[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  GTECH_AND2 C1520 ( .A(N579), .B(N571), .Z(N529) );
  GTECH_AND2 C1521 ( .A(N529), .B(N572), .Z(N530) );
  GTECH_OR2 C1523 ( .A(current_state[2]), .B(current_state[1]), .Z(N531) );
  GTECH_OR2 C1524 ( .A(N531), .B(N572), .Z(N532) );
  GTECH_OR2 C1527 ( .A(current_state[2]), .B(N571), .Z(N534) );
  GTECH_OR2 C1528 ( .A(N534), .B(current_state[0]), .Z(N535) );
  GTECH_OR2 C1532 ( .A(current_state[2]), .B(N571), .Z(N537) );
  GTECH_OR2 C1533 ( .A(N537), .B(N572), .Z(N538) );
  GTECH_OR2 C1536 ( .A(N579), .B(current_state[1]), .Z(N540) );
  GTECH_OR2 C1537 ( .A(N540), .B(current_state[0]), .Z(N541) );
  GTECH_OR2 C1541 ( .A(N579), .B(current_state[1]), .Z(N543) );
  GTECH_OR2 C1542 ( .A(N543), .B(N572), .Z(N544) );
  GTECH_AND2 C1544 ( .A(current_state[2]), .B(current_state[1]), .Z(N546) );
  GTECH_NOT I_0 ( .A(mult_counter[0]), .Z(N557) );
  GTECH_OR2 C1603 ( .A(mult_counter[3]), .B(mult_counter[4]), .Z(N558) );
  GTECH_OR2 C1604 ( .A(mult_counter[2]), .B(N558), .Z(N559) );
  GTECH_OR2 C1605 ( .A(mult_counter[1]), .B(N559), .Z(N560) );
  GTECH_OR2 C1606 ( .A(N557), .B(N560), .Z(N561) );
  GTECH_NOT I_1 ( .A(N561), .Z(N562) );
  GTECH_NOT I_2 ( .A(mult_counter[3]), .Z(N563) );
  GTECH_NOT I_3 ( .A(mult_counter[2]), .Z(N564) );
  GTECH_NOT I_4 ( .A(mult_counter[1]), .Z(N565) );
  GTECH_OR2 C1612 ( .A(N563), .B(mult_counter[4]), .Z(N566) );
  GTECH_OR2 C1613 ( .A(N564), .B(N566), .Z(N567) );
  GTECH_OR2 C1614 ( .A(N565), .B(N567), .Z(N568) );
  GTECH_OR2 C1615 ( .A(N557), .B(N568), .Z(N569) );
  GTECH_NOT I_5 ( .A(N569), .Z(N570) );
  GTECH_NOT I_6 ( .A(current_state[1]), .Z(N571) );
  GTECH_NOT I_7 ( .A(current_state[0]), .Z(N572) );
  GTECH_OR2 C1619 ( .A(N571), .B(current_state[2]), .Z(N573) );
  GTECH_OR2 C1620 ( .A(N572), .B(N573), .Z(N574) );
  GTECH_NOT I_8 ( .A(N574), .Z(N575) );
  GTECH_OR2 C1623 ( .A(N571), .B(current_state[2]), .Z(N576) );
  GTECH_OR2 C1624 ( .A(current_state[0]), .B(N576), .Z(N577) );
  GTECH_NOT I_9 ( .A(N577), .Z(N578) );
  GTECH_NOT I_10 ( .A(current_state[2]), .Z(N579) );
  GTECH_OR2 C1627 ( .A(current_state[1]), .B(N579), .Z(N580) );
  GTECH_OR2 C1628 ( .A(current_state[0]), .B(N580), .Z(N581) );
  GTECH_NOT I_11 ( .A(N581), .Z(N582) );
  MULT_TC_OP mult_260 ( .A(gmem__dut__read_data), .B(sram__dut__read_data), 
        .Z({N524, N523, N522, N521, N520, N519, N518, N517, N516, N515, N514, 
        N513, N512, N511, N510, N509, N508, N507, N506, N505, N504, N503, N502, 
        N501, N500, N499, N498, N497, N496, N495, N494, N493}) );
  ADD_TC_OP add_260 ( .A({N524, N523, N522, N521, N520, N519, N518, N517, N516, 
        N515, N514, N513, N512, N511, N510, N509, N508, N507, N506, N505, N504, 
        N503, N502, N501, N500, N499, N498, N497, N496, N495, N494, N493}), 
        .B(wx_accum), .Z(accum) );
  ADD_UNS_OP add_124 ( .A(counter), .B(1'b1), .Z({N40, N39, N38, N37, N36, N35, 
        N34, N33, N32, N31, N30, N29, N28}) );
  ADD_UNS_OP add_126 ( .A(mult_counter), .B(1'b1), .Z({N45, N44, N43, N42, N41}) );
  ADD_UNS_OP add_193 ( .A(x_0), .B({1'b1, 1'b0}), .Z({N141, N140, N139, N138, 
        N137, N136, N135, N134, N133, N132, N131, N130}) );
  ADD_UNS_OP add_223 ( .A(write_addr), .B({1'b1, 1'b0}), .Z({N364, N363, N362, 
        N361, N360, N359, N358, N357, N356, N355, N354, N353}) );
  SUB_UNS_OP sub_209 ( .A({1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .B(tanh_addr_comp[23:13]), .Z({N156, N155, 
        N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144}) );
  MULT_UNS_OP mult_209_2 ( .A(y_1), .B(tanh_addr_comp[23:13]), .Z({N210, N209, 
        N208, N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, 
        N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, 
        N184}) );
  SUB_UNS_OP sub_213 ( .A({1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .B(tanh_addr[23:13]), .Z({N266, N265, N264, 
        N263, N262, N261, N260, N259, N258, N257, N256, N255, N254}) );
  MULT_UNS_OP mult_213_2 ( .A(y_1), .B(tanh_addr[23:13]), .Z({N320, N319, N318, 
        N317, N316, N315, N314, N313, N312, N311, N310, N309, N308, N307, N306, 
        N305, N304, N303, N302, N301, N300, N299, N298, N297, N296, N295, N294}) );
  SUB_UNS_OP sub_add_229_b0 ( .A(1'b0), .B(tanh_addr[33:0]), .Z({N385, N384, 
        N383, N382, N381, N380, N379, N378, N377, N376, N375, N374, N373, N372, 
        N371, N370, N369, N368, N367, N366, N365, net122, net123, net124, 
        net125, net126, net127, net128, net129, net130, net131, net132, net133, 
        net134}) );
  MULT_UNS_OP mult_209 ( .A(y_0), .B({N156, N156, N156, N156, N156, N156, N156, 
        N156, N156, N156, N156, N156, N156, N156, N156, N155, N154, N153, N152, 
        N151, N150, N149, N148, N147, N146, N145, N144}), .Z({N183, N182, N181, 
        N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, 
        N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157}) );
  MULT_UNS_OP mult_213 ( .A(y_0), .B({N266, N266, N266, N266, N266, N266, N266, 
        N266, N266, N266, N266, N266, N266, N266, N266, N265, N264, N263, N262, 
        N261, N260, N259, N258, N257, N256, N255, N254}), .Z({N293, N292, N291, 
        N290, N289, N288, N287, N286, N285, N284, N283, N282, N281, N280, N279, 
        N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267}) );
  ADD_UNS_OP add_209 ( .A({N183, N182, N181, N180, N179, N178, N177, N176, 
        N175, N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, 
        N163, N162, N161, N160, N159, N158, N157}), .B({N210, N209, N208, N207, 
        N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, 
        N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184}), 
        .Z({N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, N227, 
        N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, 
        N214, N213, N212, N211}) );
  ADD_UNS_OP add_213 ( .A({N293, N292, N291, N290, N289, N288, N287, N286, 
        N285, N284, N283, N282, N281, N280, N279, N278, N277, N276, N275, N274, 
        N273, N272, N271, N270, N269, N268, N267}), .B({N320, N319, N318, N317, 
        N316, N315, N314, N313, N312, N311, N310, N309, N308, N307, N306, N305, 
        N304, N303, N302, N301, N300, N299, N298, N297, N296, N295, N294}), 
        .Z({N336, N335, N334, N333, N332, N331, N330, N329, N328, N327, N326, 
        N325, N324, N323, N322, N321, net135, net136, net137, net138, net139, 
        net140, net141, net142, net143, net144, net145}) );
  SUB_UNS_OP sub_209_2 ( .A(1'b0), .B({N237, N236, N235, N234, N233, N232, 
        N231, N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, 
        N219, N218, N217, N216, N215, N214, N213, N212, N211, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .Z({N253, N252, N251, N250, N249, N248, N247, N246, 
        N245, N244, N243, N242, N241, N240, N239, N238, net146, net147, net148, 
        net149, net150, net151, net152, net153, net154, net155, net156, net157, 
        net158, net159, net160, net161, net162}) );
  SELECT_OP C1635 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .DATA2(accum), .CONTROL1(N0), .CONTROL2(N1), .Z({
        N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, 
        N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, 
        N52, N51, N50, N49, N48, N47, N46}) );
  GTECH_BUF B_0 ( .A(N562), .Z(N0) );
  GTECH_BUF B_1 ( .A(N561), .Z(N1) );
  SELECT_OP C1636 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({N40, N39, N38, N37, N36, N35, 
        N34, N33, N32, N31, N30, N29, N28}), .CONTROL1(N2), .CONTROL2(N81), 
        .Z({N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82})
         );
  GTECH_BUF B_2 ( .A(counter[12]), .Z(N2) );
  SELECT_OP C1637 ( .DATA1({1'b1, 1'b1, 1'b0}), .DATA2({1'b1, 1'b0, 1'b1}), 
        .DATA3({1'b0, 1'b0, 1'b1}), .CONTROL1(N3), .CONTROL2(N492), .CONTROL3(
        N124), .Z({N127, N126, N125}) );
  GTECH_BUF B_3 ( .A(tanh_addr[34]), .Z(N3) );
  SELECT_OP C1638 ( .DATA1(1'b0), .DATA2(1'b1), .DATA3(1'b0), .CONTROL1(N3), 
        .CONTROL2(N492), .CONTROL3(N124), .Z(N128) );
  SELECT_OP C1639 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b1), .CONTROL1(N3), 
        .CONTROL2(N492), .CONTROL3(N124), .Z(N129) );
  SELECT_OP C1640 ( .DATA1({N253, N252, N251, N250, N249, N248, N247, N246, 
        N245, N244, N243, N242, N241, N240, N239, N238}), .DATA2({N336, N335, 
        N334, N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, N323, 
        N322, N321}), .CONTROL1(N3), .CONTROL2(N143), .Z({N352, N351, N350, 
        N349, N348, N347, N346, N345, N344, N343, N342, N341, N340, N339, N338, 
        N337}) );
  GTECH_NOT I_12 ( .A(N386), .Z(N387) );
  SELECT_OP C1642 ( .DATA1(1'b1), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b0), .DATA8(N387), .CONTROL1(N4), 
        .CONTROL2(N5), .CONTROL3(N6), .CONTROL4(N7), .CONTROL5(N8), .CONTROL6(
        N9), .CONTROL7(N10), .CONTROL8(N11), .Z(N388) );
  GTECH_BUF B_4 ( .A(N101), .Z(N4) );
  GTECH_BUF B_5 ( .A(N104), .Z(N5) );
  GTECH_BUF B_6 ( .A(N107), .Z(N6) );
  GTECH_BUF B_7 ( .A(N110), .Z(N7) );
  GTECH_BUF B_8 ( .A(N113), .Z(N8) );
  GTECH_BUF B_9 ( .A(N116), .Z(N9) );
  GTECH_BUF B_10 ( .A(N119), .Z(N10) );
  GTECH_BUF B_11 ( .A(N121), .Z(N11) );
  SELECT_OP C1643 ( .DATA1(tanh_addr[31:24]), .DATA2(tanh_addr_comp[31:24]), 
        .CONTROL1(N4), .CONTROL2(N11), .Z({N396, N395, N394, N393, N392, N391, 
        N390, N389}) );
  SELECT_OP C1644 ( .DATA1(N129), .DATA2(1'b1), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b0), .DATA8(N387), .CONTROL1(N4), 
        .CONTROL2(N5), .CONTROL3(N6), .CONTROL4(N7), .CONTROL5(N8), .CONTROL6(
        N9), .CONTROL7(N10), .CONTROL8(N11), .Z(N397) );
  SELECT_OP C1645 ( .DATA1({1'b0, 1'b0, 1'b0, tanh_addr[31:24], 1'b0}), 
        .DATA2({N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, 
        N131, N130}), .DATA3({1'b0, 1'b0, 1'b0, tanh_addr_comp[31:24], 1'b0}), 
        .CONTROL1(N4), .CONTROL2(N5), .CONTROL3(N11), .Z({N409, N408, N407, 
        N406, N405, N404, N403, N402, N401, N400, N399, N398}) );
  SELECT_OP C1646 ( .DATA1({N127, N126, N125}), .DATA2({1'b0, 1'b1, 1'b0}), 
        .DATA3({1'b0, 1'b1, 1'b1}), .DATA4({1'b1, 1'b0, 1'b0}), .DATA5({1'b1, 
        1'b0, 1'b1}), .DATA6({1'b0, 1'b0, 1'b0}), .DATA7({1'b1, 1'b1, 1'b1}), 
        .DATA8({N386, 1'b0, 1'b1}), .CONTROL1(N4), .CONTROL2(N5), .CONTROL3(N6), .CONTROL4(N7), .CONTROL5(N8), .CONTROL6(N9), .CONTROL7(N10), .CONTROL8(N11), 
        .Z({N412, N411, N410}) );
  SELECT_OP C1647 ( .DATA1(N128), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b1), .DATA6(1'b0), .DATA7(1'b0), .DATA8(N386), .CONTROL1(N4), 
        .CONTROL2(N5), .CONTROL3(N6), .CONTROL4(N7), .CONTROL5(N8), .CONTROL6(
        N9), .CONTROL7(N10), .CONTROL8(N11), .Z(N413) );
  SELECT_OP C1648 ( .DATA1({1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1}), .DATA2({N352, N351, 
        N350, N349, N348, N347, N346, N345, N344, N343, N342, N341, N340, N339, 
        N338, N337}), .DATA3({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CONTROL1(N4), 
        .CONTROL2(N8), .CONTROL3(N11), .Z({N429, N428, N427, N426, N425, N424, 
        N423, N422, N421, N420, N419, N418, N417, N416, N415, N414}) );
  SELECT_OP C1649 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b1), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b0), .DATA8(1'b0), .CONTROL1(N4), 
        .CONTROL2(N5), .CONTROL3(N6), .CONTROL4(N7), .CONTROL5(N8), .CONTROL6(
        N9), .CONTROL7(N10), .CONTROL8(N11), .Z(N430) );
  SELECT_OP C1650 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b1), 
        .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b0), .DATA8(1'b0), .CONTROL1(N4), 
        .CONTROL2(N5), .CONTROL3(N6), .CONTROL4(N7), .CONTROL5(N8), .CONTROL6(
        N9), .CONTROL7(N10), .CONTROL8(N11), .Z(N431) );
  SELECT_OP C1651 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b1), .DATA7(1'b0), .DATA8(1'b0), .CONTROL1(N4), 
        .CONTROL2(N5), .CONTROL3(N6), .CONTROL4(N7), .CONTROL5(N8), .CONTROL6(
        N9), .CONTROL7(N10), .CONTROL8(N11), .Z(N432) );
  SELECT_OP C1652 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b1), .DATA8(1'b0), .CONTROL1(N4), 
        .CONTROL2(N5), .CONTROL3(N6), .CONTROL4(N7), .CONTROL5(N8), .CONTROL6(
        N9), .CONTROL7(N10), .CONTROL8(N11), .Z(N433) );
  SELECT_OP C1653 ( .DATA1(1'b1), .DATA2(1'b0), .DATA3(N432), .DATA4(1'b0), 
        .CONTROL1(N12), .CONTROL2(N13), .CONTROL3(N14), .CONTROL4(N27), .Z(
        N434) );
  GTECH_BUF B_12 ( .A(N578), .Z(N12) );
  GTECH_BUF B_13 ( .A(N575), .Z(N13) );
  GTECH_BUF B_14 ( .A(N582), .Z(N14) );
  SELECT_OP C1654 ( .DATA1(1'b1), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .CONTROL1(N12), .CONTROL2(N13), .CONTROL3(N14), .CONTROL4(N27), .Z(
        N435) );
  SELECT_OP C1655 ( .DATA1({N45, N44, N43, N42, N41}), .DATA2({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .CONTROL1(N12), .CONTROL2(N14), .Z({N440, N439, 
        N438, N437, N436}) );
  SELECT_OP C1656 ( .DATA1(1'b1), .DATA2(1'b0), .DATA3(1'b1), .DATA4(1'b0), 
        .CONTROL1(N12), .CONTROL2(N13), .CONTROL3(N14), .CONTROL4(N27), .Z(
        N441) );
  SELECT_OP C1657 ( .DATA1(1'b1), .DATA2(N95), .DATA3(1'b0), .DATA4(1'b0), 
        .CONTROL1(N12), .CONTROL2(N13), .CONTROL3(N14), .CONTROL4(N27), .Z(
        N442) );
  SELECT_OP C1658 ( .DATA1({N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, 
        N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, 
        N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46}), .DATA2(accum), 
        .CONTROL1(N12), .CONTROL2(N13), .Z({N477, N476, N475, N474, N473, N472, 
        N471, N470, N469, N468, N467, N466, N465, N464, N463, N462, N461, N460, 
        N459, N458, N457, N456, N455, N454, N453, N452, N451, N450, N449, N448, 
        N447, N446, N445, N444, N443}) );
  SELECT_OP C1659 ( .DATA1(counter[12]), .DATA2(1'b0), .DATA3(1'b0), .DATA4(
        1'b0), .CONTROL1(N12), .CONTROL2(N13), .CONTROL3(N14), .CONTROL4(N27), 
        .Z(N478) );
  SELECT_OP C1660 ( .DATA1(1'b0), .DATA2(mult_ripple_flag), .DATA3(1'b1), 
        .DATA4(1'b0), .CONTROL1(N12), .CONTROL2(N13), .CONTROL3(N14), 
        .CONTROL4(N27), .Z(N479) );
  SELECT_OP C1661 ( .DATA1(1'b0), .DATA2(mult_ripple_flag), .DATA3(1'b0), 
        .DATA4(1'b0), .CONTROL1(N12), .CONTROL2(N13), .CONTROL3(N14), 
        .CONTROL4(N27), .Z(N480) );
  SELECT_OP C1662 ( .DATA1({1'b0, 1'b0, 1'b0}), .DATA2({N412, N411, N410}), 
        .CONTROL1(N13), .CONTROL2(N14), .Z({N483, N482, N481}) );
  SELECT_OP C1663 ( .DATA1(1'b0), .DATA2(1'b1), .DATA3(1'b1), .DATA4(1'b0), 
        .CONTROL1(N12), .CONTROL2(N13), .CONTROL3(N14), .CONTROL4(N27), .Z(
        N484) );
  SELECT_OP C1664 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(N433), .DATA4(1'b0), 
        .CONTROL1(N12), .CONTROL2(N13), .CONTROL3(N14), .CONTROL4(N27), .Z(
        N485) );
  SELECT_OP C1665 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(N388), .DATA4(1'b0), 
        .CONTROL1(N12), .CONTROL2(N13), .CONTROL3(N14), .CONTROL4(N27), .Z(
        N486) );
  SELECT_OP C1666 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(N397), .DATA4(1'b0), 
        .CONTROL1(N12), .CONTROL2(N13), .CONTROL3(N14), .CONTROL4(N27), .Z(
        N487) );
  SELECT_OP C1667 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(N413), .DATA4(1'b0), 
        .CONTROL1(N12), .CONTROL2(N13), .CONTROL3(N14), .CONTROL4(N27), .Z(
        N488) );
  SELECT_OP C1668 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(N430), .DATA4(1'b0), 
        .CONTROL1(N12), .CONTROL2(N13), .CONTROL3(N14), .CONTROL4(N27), .Z(
        N489) );
  SELECT_OP C1669 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(N431), .DATA4(1'b0), 
        .CONTROL1(N12), .CONTROL2(N13), .CONTROL3(N14), .CONTROL4(N27), .Z(
        N490) );
  SELECT_OP C1670 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(N432), .DATA4(1'b0), 
        .CONTROL1(N12), .CONTROL2(N13), .CONTROL3(N14), .CONTROL4(N27), .Z(
        N491) );
  SELECT_OP C1671 ( .DATA1({1'b0, 1'b0, 1'b0}), .DATA2(next_state), .CONTROL1(
        N15), .CONTROL2(N16), .Z({N528, N527, N526}) );
  GTECH_BUF B_15 ( .A(N525), .Z(N15) );
  GTECH_BUF B_16 ( .A(reset_b), .Z(N16) );
  SELECT_OP C1672 ( .DATA1({1'b1, 1'b0, 1'b1}), .DATA2({1'b0, 1'b1, 1'b1}), 
        .DATA3({1'b0, 1'b1, 1'b0}), .CONTROL1(N17), .CONTROL2(N556), 
        .CONTROL3(N549), .Z({N552, N551, N550}) );
  GTECH_BUF B_17 ( .A(done), .Z(N17) );
  SELECT_OP C1673 ( .DATA1(1'b0), .DATA2(xxx__dut__run), .DATA3(1'b1), .DATA4(
        1'b1), .DATA5(1'b1), .DATA6(1'b0), .DATA7(1'b0), .CONTROL1(N18), 
        .CONTROL2(N19), .CONTROL3(N20), .CONTROL4(N21), .CONTROL5(N22), 
        .CONTROL6(N23), .CONTROL7(N24), .Z(dut__xxx__busy) );
  GTECH_BUF B_18 ( .A(N530), .Z(N18) );
  GTECH_BUF B_19 ( .A(N533), .Z(N19) );
  GTECH_BUF B_20 ( .A(N536), .Z(N20) );
  GTECH_BUF B_21 ( .A(N539), .Z(N21) );
  GTECH_BUF B_22 ( .A(N542), .Z(N22) );
  GTECH_BUF B_23 ( .A(N545), .Z(N23) );
  GTECH_BUF B_24 ( .A(N546), .Z(N24) );
  SELECT_OP C1674 ( .DATA1({1'b0, 1'b0, 1'b1}), .DATA2({1'b0, xxx__dut__run, 
        N547}), .DATA3({N552, N551, N550}), .DATA4({wait_done, N553, N553}), 
        .DATA5({N554, tanh_done, 1'b0}), .DATA6({1'b0, 1'b0, 1'b1}), .DATA7({
        1'b0, 1'b0, 1'b0}), .CONTROL1(N18), .CONTROL2(N19), .CONTROL3(N20), 
        .CONTROL4(N21), .CONTROL5(N22), .CONTROL6(N23), .CONTROL7(N24), .Z(
        next_state) );
  GTECH_OR2 C1680 ( .A(N575), .B(N578), .Z(N25) );
  GTECH_OR2 C1681 ( .A(N582), .B(N25), .Z(N26) );
  GTECH_NOT I_13 ( .A(N26), .Z(N27) );
  GTECH_BUF B_25 ( .A(N578) );
  GTECH_NOT I_14 ( .A(counter[12]), .Z(N81) );
  GTECH_NOT I_15 ( .A(mult_ripple_flag), .Z(N95) );
  GTECH_BUF B_26 ( .A(N582), .Z(N96) );
  GTECH_NOT I_16 ( .A(interpolate[2]), .Z(N97) );
  GTECH_NOT I_17 ( .A(interpolate[1]), .Z(N98) );
  GTECH_NOT I_18 ( .A(interpolate[0]), .Z(N99) );
  GTECH_NOT I_19 ( .A(N103), .Z(N104) );
  GTECH_NOT I_20 ( .A(N106), .Z(N107) );
  GTECH_NOT I_21 ( .A(N109), .Z(N110) );
  GTECH_NOT I_22 ( .A(N112), .Z(N113) );
  GTECH_NOT I_23 ( .A(N115), .Z(N116) );
  GTECH_NOT I_24 ( .A(N118), .Z(N119) );
  GTECH_OR2 C1718 ( .A(tanh_addr[33]), .B(tanh_addr[32]), .Z(N122) );
  GTECH_OR2 C1721 ( .A(N122), .B(tanh_addr[34]), .Z(N123) );
  GTECH_NOT I_25 ( .A(N123), .Z(N124) );
  GTECH_AND2 C1723 ( .A(N96), .B(N104), .Z(net117) );
  GTECH_AND2 C1724 ( .A(N96), .B(N113), .Z(N142) );
  GTECH_NOT I_26 ( .A(tanh_addr[34]), .Z(N143) );
  GTECH_AND2 C1727 ( .A(N142), .B(tanh_addr[34]), .Z(net118) );
  GTECH_AND2 C1728 ( .A(N142), .B(N143), .Z(net119) );
  GTECH_AND2 C1729 ( .A(N96), .B(N116), .Z(net120) );
  GTECH_AND2 C1730 ( .A(N96), .B(N119), .Z(net121) );
  GTECH_OR2 C1731 ( .A(tanh_addr_comp[33]), .B(tanh_addr_comp[32]), .Z(N386)
         );
  GTECH_AND2 C1736 ( .A(N122), .B(N143), .Z(N492) );
  GTECH_NOT I_27 ( .A(reset_b), .Z(N525) );
  GTECH_NOT I_28 ( .A(N532), .Z(N533) );
  GTECH_NOT I_29 ( .A(N535), .Z(N536) );
  GTECH_NOT I_30 ( .A(N538), .Z(N539) );
  GTECH_NOT I_31 ( .A(N541), .Z(N542) );
  GTECH_NOT I_32 ( .A(N544), .Z(N545) );
  GTECH_NOT I_33 ( .A(xxx__dut__run), .Z(N547) );
  GTECH_OR2 C1767 ( .A(N570), .B(done), .Z(N548) );
  GTECH_NOT I_34 ( .A(N548), .Z(N549) );
  GTECH_NOT I_35 ( .A(wait_done), .Z(N553) );
  GTECH_NOT I_36 ( .A(tanh_done), .Z(N554) );
  GTECH_NOT I_37 ( .A(done), .Z(N555) );
  GTECH_AND2 C1776 ( .A(N570), .B(N555), .Z(N556) );
endmodule

