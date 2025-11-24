`include "interface.sv"
`include "test.sv"
 module testbench;
  intr pif();
  test tb(pif);
   pri_enc e1(.I0(pif.I0),.I1(pif.I1),.I2(pif.I2),.I3(pif.I3),.a(pif.a),.b(pif.b));
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
endmodule
