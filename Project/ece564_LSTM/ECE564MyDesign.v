//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
// DUT




module ECE564MyDesign
	    (

            //---------------------------------------------------------------------------
            // Control
            //
            input  wire               xxx__dut__run            ,             
            output reg                dut__xxx__busy           , // high when computing
            input  wire               clk                      ,
            input  wire               reset_b                  ,


            //--------------------------------------------------------------------------- 
            //---------------------------------------------------------------------------
            // SRAM interface
            //
            output reg  [11:0]        dut__sram__write_address  ,
            output reg  [15:0]        dut__sram__write_data     ,
            output reg                dut__sram__write_enable   ,
            output reg  [11:0]        dut__sram__read_address   ,
            input  wire [15:0]        sram__dut__read_data      ,
            
            //---------------------------------------------------------------------------
            // f memory interface
            //
            output reg  [11:0]        dut__fmem__read_address   ,
            input  wire [15:0]        fmem__dut__read_data      ,  // read data

            //---------------------------------------------------------------------------
            // g memory interface
            //
            output reg  [11:0]        dut__gmem__read_address   ,
            input  wire [15:0]        gmem__dut__read_data      ,  // read data

            //---------------------------------------------------------------------------
            // i memory interface
            //
            output reg  [11:0]        dut__imem__read_address   ,
            input  wire [15:0]        imem__dut__read_data      ,  // read data
            
            //---------------------------------------------------------------------------
            // o memory interface
            //
            output reg  [11:0]        dut__omem__read_address   ,
            input  wire [15:0]        omem__dut__read_data      ,  // read data

            //---------------------------------------------------------------------------
            // Tanh look up table tanhmem 
            //
            output reg  [11:0]        dut__tanhmem__read_address     ,
            input  wire [15:0]        tanhmem__dut__read_data           // read data

            );

  //---------------------------------------------------------------------------
  //
  //<<<<----  YOUR CODE HERE    ---->>>>


endmodule

