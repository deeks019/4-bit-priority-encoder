`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
class environment;
  generator gen;
  driver driv;
  mailbox mbox;
  virtual intr in;
  function new(virtual intr in);
    this.in=in;
    mbox= new();
    gen=new(mbox);
    driv =new(in,mbox);
  endfunction
  task run();
    fork
      gen.run();
      driv.run();
    join
  endtask
endclass