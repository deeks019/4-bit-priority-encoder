class generator;
  transaction tr;
  mailbox mbox;
  function new(mailbox mbox);
    this.mbox=mbox;
    endfunction
    task run(); 
       repeat(5)
      begin
         tr=new();
        tr.randomize();
        $display("in1=%d,in2=%d,cin=%d",tr.in1,tr.in2,tr.cin);
        mbox.put(tr);
      end
    endtask
    endclass