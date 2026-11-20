# code for full_adder_1bit.v
...
  module full_adder_1bit(a,b,c_in,sum,c_out);
        input a,b,c_in;
        output sum,c_out;
        assign sum=a^b^c_in;
        assign c_out=(a&&b)||(c_in&&(a^b));
  endmodule
...
