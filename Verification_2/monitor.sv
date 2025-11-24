class monitor;
  virtual intr in;     
  mailbox mbox1;     
  transaction tr;

  function new(virtual intr in, mailbox mbox1);
    this.in = in;
    this.mbox1 = mbox1;
  endfunction

  task run();
    forever begin
      @(in.a or in.b);
      tr = new();
      tr.I0 = in.I0;
      tr.I1 = in.I1;
      tr.I2 = in.I2;
      tr.I3 = in.I3;
      tr.a  = in.a;
      tr.b  = in.b;
      mbox1.put(tr);           
      tr.display("MONITOR");
    end
  endtask
endclass
