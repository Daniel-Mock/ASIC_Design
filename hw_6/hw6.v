 
module accum(reset, clock, clear, DataIn1, DataIn2, EvenParity, GreyCode, overflow);
input reset, clock, clear;
input [7:0] DataIn1, DataIn2;
output reg [7:0] EvenParity, GreyCode;
output reg overflow;


reg overflow_flag;
reg overflow_count1;
reg EvenParity_count1;
reg GreyCode_count1;
reg overflow_count2;
reg EvenParity_count2;
reg GreyCode_count2;
reg of_flag;

  always @ (posedge clock) 
    begin 
      if(!reset)
	begin
	  EvenParity=8'b00000000;
	  GreyCode=8'b00000000;
	  overflow=1'b0;
	  overflow_flag=1'b0;
	  EvenParity_count1=8'b00000000;
	  GreyCode_count1=8'b00000000;
	  overflow_count1=1'b0;
	  EvenParity_count2=8'b00000000;
	  GreyCode_count2=8'b00000000;
	  overflow_count2=1'b0;
	  of_flag=1'b0;
	end

      else if(clear)
	begin
	  EvenParity=8'b00000000;
	  GreyCode=8'b00000000;
	  overflow=1'b0;
	  overflow_flag=1'b0;
	  EvenParity_count1=8'b00000000;
	  GreyCode_count1=8'b00000000;
	  overflow_count1=1'b0;
	  EvenParity_count2=8'b00000000;
	  GreyCode_count2=8'b00000000;
	  overflow_count2=1'b0;
	  of_flag=1'b0;
	end
      else
	begin

		//Check for GreyCode in DataIn1 and DataIn2
	      if((DataIn1 == 8'b10101010) || (DataIn1 == 8'b01010101))
		begin
		  GreyCode_count1= 8'b00000001;
		end  
	      else
		begin
		  GreyCode_count1=8'b00000000;
		end

	      if((DataIn2 == 8'b10101010) || (DataIn2 == 8'b01010101))
		begin
		  GreyCode_count2= 8'b00000001;
		end
	      else
		begin
		  GreyCode_count2=8'b00000000;
		end

		//Check for Even Parity in DataIn1 and DataIn2
	      if((^DataIn1)==0)
		begin
		  EvenParity_count1=8'b00000001;
		end
	      else
		begin
		  EvenParity_count1=8'b00000000;
		end

	      if((^DataIn2)==0)
		begin
		  EvenParity_count2=8'b00000001;
		end
	      else
		begin
		  EvenParity_count2=8'b00000000;
		end
		

		{overflow_count1, GreyCode}=GreyCode + GreyCode_count1 + GreyCode_count2;
		{overflow_count2, EvenParity}=EvenParity + EvenParity_count1 + EvenParity_count2;
		of_flag=overflow || overflow_count1 || overflow_count2;
		overflow=of_flag;

	end



    end 


      
endmodule

