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
	reg[7:0] x_ref,w_ref;
	reg sram_read_flag;
	reg[5:0] read_address_counter = 5'b0;
	reg[15:0] x[16];
	reg[15:0] w[16];
	reg[31:0] x_times_w;
	reg [1:0] current_state;
	reg [1:0] next_state;

	//State Names
	localparam WAIT_FOR_RESET = 2'b00;	
	localparam WAIT_FOR_RUN = 2'b01;
	localparam COMPUTE = 2'b10;
	localparam MULTIPLY_RES = 2'b11;

	
	always @ (posedge clk)
		begin
			current_state <= (!reset_b) ? WAIT_FOR_RESET: next_state;
		end

	always @ (posedge clk)
		begin
			//LOGIC TO READ X and W
			if(current_state == COMPUTE && read_address_counter <= 5'd31)
				begin
					sram_read_flag = 1'b1;
					dut__sram__write_enable <= 1'b0;
					dut__sram__read_address <= w_ref + read_address_counter;
					dut__gmem__read_address <= read_address_counter;
					read_address_counter = read_address_counter + 2'd2;  
				end
			
			else if(read_address_counter > 5'd31)
				begin
					read_address_counter = 5'd0;
					sram_read_flag = 1'b0;
					w_ref = w_ref + 8'd30; //maybe 32
				end
		end
	always @ (posedge clk)
		begin
			w[read_address_counter>>1] <= sram__dut__read_data;
			x[read_address_counter>>1] <= gmem__dut__read_data; 
		end
	

	always @ (*)
		begin
			case(current_state)
			  WAIT_FOR_RESET: begin
			  //RESET LOGIC
			  dut__xxx__busy = 1'b0;
			  next_state = WAIT_FOR_RUN;
			  endcase

			  WAIT_FOR_RUN: begin
			  //RUN LOGIC
			  if(xxx__dut__run)
			  begin
				dut__xxx__busy = 1'b1;
				next_state = COMPUTE;
			  end
			  else next_state = WAIT_FOR_RUN;
			  endcase

			  COMPUTE: begin
			  //COMPUTE LOGIC
			  if (!sram_read_flag) next_state = MULTIPLY_RES;
			  else next_state = COMPUTE;
			  endcase
		end


endmodule

