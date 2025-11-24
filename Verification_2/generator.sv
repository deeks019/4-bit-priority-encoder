class generator;
  transaction tr;
  mailbox mbox;
  function new(mailbox mbox);
    this.mbox=mbox;
    endfunction
    task run(); 
      repeat(8)
      begin
         tr=new();
        tr.randomize();
        $display("GEN:I0=%d,I1=%d,I2=%d,I3=%d",tr.I0,tr.I1,tr.I2,tr.I3);
        mbox.put(tr);
      end
    endtask
    endclass