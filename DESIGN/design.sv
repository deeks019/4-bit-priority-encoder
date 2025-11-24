module pri_enc(input I0,I1,I2,I3, output a,b); 
assign a=(I2|I3); 
assign b=(I1&(~I2))|I3; 
endmodule