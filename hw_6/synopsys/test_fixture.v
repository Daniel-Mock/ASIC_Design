module test_fixture;

 

parameter TestCycles = 260; // # test cycles

parameter TC = 10; // # Clock period in ns

 

reg clock;

reg reset, clear;

 

reg [7:0] DataIn1Vectors [TestCycles-1:0];

reg [7:0] DataIn2Vectors [TestCycles-1:0];

 

reg [7:0] ExpectedEvenParity [TestCycles-1:0];

reg [7:0] ExpectedGreyCode [TestCycles-1:0];

reg [TestCycles-1:0] ExpectedOverflow;

 

reg [7:0] DataIn1;

reg [7:0] DataIn2;

wire overflow;

wire [7:0] EvenParity, GreyCode;

 

integer i,j;

 

initial // setup vectors

  begin

    DataIn1Vectors [0] = 8'h03;

    DataIn1Vectors [1] = 8'hAA;

    DataIn1Vectors [2] = 8'h03;

    DataIn1Vectors [3] = 8'h03;

 

    DataIn2Vectors [0] = 8'h03;

    DataIn2Vectors [1] = 8'h01;

    DataIn2Vectors [2] = 8'h01;

    DataIn2Vectors [3] = 8'h01;

 

    ExpectedEvenParity [0] = 8'h02;

    ExpectedEvenParity [1] = 8'h03;

    ExpectedEvenParity [2] = 8'h04;

    ExpectedEvenParity [3] = 8'h05;

 

    ExpectedGreyCode [0] = 8'h0;

    ExpectedGreyCode [1] = 8'h1;

    ExpectedGreyCode [2] = 8'h1;

    ExpectedGreyCode [3] = 8'h1;

 

    ExpectedOverflow [0] = 8'h0;

    ExpectedOverflow [1] = 8'h0;

    ExpectedOverflow [2] = 8'h0;

    ExpectedOverflow [3] = 8'h0;

 

    for (i=4; i<=TestCycles-1; i = i+1)

      begin

        DataIn1Vectors [i] = 8'h03;

        DataIn2Vectors [i] = 8'h01;

        {ExpectedOverflow[i], ExpectedEvenParity [i]}

          = ExpectedEvenParity[i-1] + 1'b1;

         if (ExpectedOverflow[i-1]) ExpectedOverflow[i]=ExpectedOverflow[i-1];

      end

end

 

initial //following block executed only once

begin

 

//insert monitor statement here

// $monitor("Time =%d;   Clock =  %b;   DataIn1 =  %h;   Evenparity =  %h; GreyCode = %h", $stime, clock, DataIn1, EvenParity, GreyCode);

         

     clock = 0;

        reset = 1;

        clear = 0;

        #6 DataIn1 = 8'h01;

        DataIn2 = 8'h01;

        #TC clear = 1;

        #TC clear = 0;

        #TC for (j=0; j<=TestCycles-1; j = j+1)

            begin

              DataIn1 = DataIn1Vectors[j];

              DataIn2 = DataIn2Vectors[j];

              #TC

              if (EvenParity != ExpectedEvenParity[j])

                   $display("Error in Parity cycle %d\n",j);

              if (GreyCode != ExpectedGreyCode[j])

                   $display("Error in Grey Code\n");

              if (overflow != ExpectedOverflow[j])

                   $display("Error in Overflow \n");

            end

     $finish;

end

 

always #5 clock=~clock;  //10ns clock

 

accum u1 (.clock(clock), .reset(reset), .clear(clear), .DataIn1(DataIn1), .DataIn2(DataIn2), .EvenParity(EvenParity), .GreyCode(GreyCode), .overflow(overflow));

 

endmodule /* test_fixture */
