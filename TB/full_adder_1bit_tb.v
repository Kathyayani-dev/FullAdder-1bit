# code for full_adder_1bit_tb.v
  ...
     module full_adder_1bit_tb();
       reg   a,b,c_in;
       wire  sum,c_out;
       integer i;
          full_adder_1bit DUT(a,b,c_in,sum,c_out);
       initial
          begin
             a   = 1'b0;
             b   = 1'b0;
             c_in = 1'b0;
          end
   
         initial
            begin
               for (i=0;i<8;i=i+1)
                  begin
                     {a,b,c_in}=i;
                     #10;
                  end
            end
         initial
            $monitor("Input a=%b, b=%b, c_in=%b, Output sum =%b, c_out=%b",a,b,c_in,sum,c_out);
            initial #100 $finish;
    endmodule
...
