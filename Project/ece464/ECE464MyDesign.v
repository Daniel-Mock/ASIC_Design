// Ports are named by SOURCE__DESTINATION__SIGNAL in this module
// It shows the directionality of the signal, which "xxx" is the test fixture
// and "dut" stants for "device under test", which is your module.
//
//Good luck with your project!


module ECE464MyDesign
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
            // Tanh look up table tanhmem
            //
            output reg  [11:0]        dut__tanhmem__read_address,
            input  wire [15:0]        tanhmem__dut__read_data

            );

  //---------------------------------------------------------------------------
  //
  //<<<<----  YOUR CODE HERE    ---->>>>



endmodule
