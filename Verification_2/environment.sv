`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"
class environment;
  generator gen;
  driver driv;
  monitor mon;
  scoreboard scb;
  mailbox mbox;
  mailbox mbox1;
  virtual intr in;
  function new(virtual intr in);
    this.in=in;
    mbox=new();
    mbox1=new();
    gen=new(mbox);
    driv=new(in,mbox);
    mon=new(in,mbox1);
    scb=new(mbox1);
  endfunction
  task run();
    fork
      gen.run();
      driv.run();
      mon.run();
      scb.run();
    join
  endtask
endclass