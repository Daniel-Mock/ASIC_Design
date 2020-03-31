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
	reg[7:0] x_ref = 8'b0;
	reg[7:0] w_ref = 8'b0;
	reg[12:0] counter = 13'b0;
	reg signed[15:0] x;
	reg signed[15:0] w;
	reg signed[34:0] accum,  wx_accum;
	reg [34:0] tanh_addr = 35'b0, tanh_addr_comp = 35'b0;
	reg [2:0] current_state;
	reg [2:0] next_state;
	reg [2:0] interpolate;
	reg [11:0] sram_address, gram_address;

	reg done, start_count, tanh_done, wait_done, start, stop_accum, write_done, sat_flag = 1'b0;

	reg [4:0] mult_counter = 5'b0;
	reg mult_ripple_flag = 1'b0;

	reg [15:0]  y_0, y_1;
	reg [29:0] interpolate_first_mult;
	reg [32:0] g = 33'b0;
	reg [11:0] x_0, x_1;
	reg [11:0] write_addr = 12'h200;

	//MAIN STATE MACHINE STATE NAMES
	localparam WAIT_FOR_RESET = 3'b000;	
	localparam WAIT_FOR_RUN = 3'b001;
	localparam COMPUTE = 3'b010;
	localparam WAIT = 3'b011;
	localparam TANH = 3'b100;
	localparam END = 3'b101;

	//INNER STATE MACHINE STATE NAMES
	localparam WAIT_ONE = 3'd0;
	localparam FIRST_READ = 3'd1;
	localparam WAIT_TWO = 3'd2;
	localparam SECOND_READ = 3'd3;
	localparam MULT = 3'd4;
	localparam WRITE = 3'd5;
	localparam COMPLEMENT = 3'd6;
	localparam WAIT_THREE = 3'd7;
	
		

		/* READ X & W FROM MEMORY, CALCULATE TANH */	

		//This block of code is the state machine to do the matrix multiplication of x*w and computation of Tanh
	always @ (posedge clk)
		begin
			//LOGIC TO READ X and W
			if(current_state == COMPUTE)
				begin //ITERATE OVER X AND W ADDRESSES, ASSIGNING THE CORRECT ADDRESS TO THE CURRENT STEP
					dut__sram__write_enable <= 1'b0;
					sram_address <= {counter[11:8],counter[3:0]}<<1;
					gram_address <= counter[7:0]<<1;
			 		counter <= counter + 13'b1;
					//start_count <= 1'b1;
					mult_counter <= mult_counter + 5'b1; //COUNTER FOR THE 16-ELEMENT MULTIPLY
					if (mult_counter == 5'd1)
					begin
						wx_accum <= 35'b0; //RESET THE ACCUMULATION WHEN OVERFLOW
					end
					else
					begin
						wx_accum <= accum;
					end

				if(counter[12]) //DONE WITH ALL CALCULATIONS
					begin
					done <= 1'b1;
					counter <= 13'b0;
					start_count <= 1'b0;
					end	
				tanh_done <= 1'b0;
				sat_flag <= 1'b0;
				end


			else if(current_state == WAIT)
				begin
					if(mult_ripple_flag) //LET THE MATRIX MULTIPLICATION RIPPLE THROUGH THE LOGIC 
					begin
						stop_accum <= 1'b1;
						wait_done <= 1'b1;
						tanh_addr <= accum;
						interpolate <= WAIT_ONE;
					end
					else
					begin
						wx_accum <= accum;
					end
					mult_ripple_flag <= 1'b1;
				end

			else if(current_state == TANH) //LINEAR INTERPOLATION STATE, CHECK FOR NEGATIVE, SATURATION, AND PERFORM INTERPOLATION IF NECESSARY
				begin
					wait_done <= 1'b0;
					mult_counter <= 5'b0;
					stop_accum <= 1'b0;
					mult_ripple_flag <= 1'b0;
					
					//Tanh Process
						case(interpolate)
							WAIT_ONE: begin
								x_0 <= tanh_addr[31:24] << 1;
								if(tanh_addr[34]) interpolate <= COMPLEMENT; //IF NEGATIVE, DO TWO'S COMPLEMENT
								else 
								begin //IF SATURATED, ASSIGN MAX VALUE
									if(tanh_addr[33:32])
									begin
										g <= {16'b0111111111101001, 17'd0};
										interpolate <= WRITE;
										sat_flag <= 1'b1;
									end
									else
									begin
										interpolate <= FIRST_READ;
										dut__tanhmem__read_address <= tanh_addr[31:24] << 1;
									end
								end
							end

				 			FIRST_READ: begin
								x_1 <= x_0 + 2'd2;
								dut__tanhmem__read_address <= x_0 + 2'd2;
								interpolate <= WAIT_TWO;
							end

							WAIT_TWO: begin
								y_0 <= tanhmem__dut__read_data;
								interpolate <= SECOND_READ;
							end
							
							SECOND_READ: begin
								y_1 <= 	tanhmem__dut__read_data;	
								interpolate <= MULT;
							end

							MULT: begin //LINEAR INTERPOLATION OF X0, X1
								if(tanh_addr[34]) begin //IF NEGATIVE, RETURN THE NEGATIVE OF TANH(X) VALUE
									g <= -(y_0*({8'b1,11'b0}-{8'b0,tanh_addr_comp[23:13]}) + y_1*({8'b0,tanh_addr_comp[23:13]})<<6);

								end
								else begin //RETURN POSITIVE VALUE OF TANH(X)
									g <= y_0*({8'b1,11'b0}-{8'b0,tanh_addr[23:13]}) + y_1*({8'b0,tanh_addr[23:13]})<<6;
								end
								interpolate <= WRITE;
							end
							
							WRITE: begin //WRITE TANH(X) TO MEMORY
								dut__sram__write_enable <= 1'b1;
								dut__sram__write_address <= write_addr;
								dut__sram__write_data <= g[32:17];
								
								write_addr <= write_addr + 12'h002; 
								interpolate <=WAIT_ONE;
								tanh_done <= 1'b1;
							end

							COMPLEMENT: begin //TWO'S COMPLEMENT ON X
								tanh_addr_comp <= ~tanh_addr + 35'd1;
								interpolate <= WAIT_THREE;
							end
				
							WAIT_THREE: begin
								if(tanh_addr_comp[33:32]) //IF SATURATED, ASSIGN MIN VALUE
									begin
										g <= {16'b0000000000000000, 17'd0};
										sat_flag <= 1'b1;
										interpolate <= WRITE;
									end
								else begin
								x_0 <= tanh_addr_comp[31:24] << 1;
								dut__tanhmem__read_address <= tanh_addr_comp[31:24] << 1;
								interpolate <= FIRST_READ;
								end
							end
							endcase
					//end
				end
		end



		/*MULTIPLY & ACCUMULATE 16 TIMES */
		//This block retrieves the new value of x and w and peforms the multiplication and accumulate of the two
	always @ (*)
		begin
			dut__sram__read_address	= sram_address;
			dut__gmem__read_address = gram_address;
			x = sram__dut__read_data;
			w = gmem__dut__read_data;
			accum = w*x + wx_accum;
		end



		/* PRIMARY STATE MACHINE */
		//This is my outside state machine that checks for run flag, sets busy flag, starts and stops the calculations	

	always @ (posedge clk)
		begin
			current_state <= (!reset_b) ? WAIT_FOR_RESET: next_state;
		end

	always @ (*)
		begin
			case(current_state)
			  WAIT_FOR_RESET: begin //SET BUSY LOW
			  //RESET LOGIC
			  dut__xxx__busy = 1'b0;	
			  next_state = WAIT_FOR_RUN;
			  end

			  WAIT_FOR_RUN: begin //WAIT FOR RUN FLAG, IF RECEIVED, SET BUSY HIGH AND START COMPUTING
			  //RUN LOGIC
			  if(xxx__dut__run)
			  begin
				dut__xxx__busy = 1'b1;
				next_state = COMPUTE;
			  end
			  else 
			  begin
				next_state = WAIT_FOR_RUN;
				dut__xxx__busy = 1'b0;
			  end
			  end

			  COMPUTE: begin //16-ELEMENT MATRIX MULTIPLICATION
			  //COMPUTE LOGIC
			  dut__xxx__busy = 1'b1;
			  if (done) next_state = END;
		  	  else if(mult_counter == 5'd15) 
				begin
				next_state = WAIT;
				end
			  else next_state = COMPUTE;
			  end
			  
			  WAIT: begin //1-CYCLE WAIT STATE FOR SYNCHRONIZATON
			  dut__xxx__busy = 1'b1;
			  if(wait_done) next_state = TANH;
			  else next_state = WAIT;
			  end

			  TANH: begin //COMPUTE TANH(X)
			  dut__xxx__busy = 1'b1;
			  if(tanh_done) next_state = COMPUTE;
			  else next_state = TANH;
			  end


			  END: begin
			  dut__xxx__busy = 1'b0;			  
			  next_state = WAIT_FOR_RUN;
			  end
			  default: begin
			  next_state = WAIT_FOR_RESET;
			  dut__xxx__busy = 1'b0;
			  end
			endcase
		end


endmodule

