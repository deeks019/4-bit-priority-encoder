class driver;
  virtual intr in;
  mailbox mbox;
  transaction tr;				
  function new (virtual intr in,mailbox mbox);
    this.in=in;
    this.mbox=mbox;
  endfunction
  task run();
    forever
      begin
        tr=new();
        mbox.get(tr);
        in.I0=tr.I0;
        in.I1=tr.I1;
        in.I2=tr.I2;
        in.I3=tr.I3;
        #5
        tr.a=in.a;
        tr.b=in.b;
        $display ("a=%d,b=%d",tr.a,tr.b);
                 end
                 endtask
                 endclass
                 