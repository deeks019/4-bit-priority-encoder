class scoreboard;
  mailbox scb_mbox;
  int error_count = 0;

  function new(mailbox scb_mbox);
    this.scb_mbox = scb_mbox;
  endfunction

  // Golden model for 4-to-2 priority encoder
  function bit [1:0] expected(bit I3, bit I2, bit I1, bit I0);
    if      (I3) return 2'b11;
    else if (I2) return 2'b10;
    else if (I1) return 2'b01;
    else if (I0) return 2'b00;
    else         return 2'b00;
  endfunction

  task run();
    transaction tr;
    bit [1:0] exp;

    forever begin
      scb_mbox.get(tr);     // wait for monitor
      exp = expected(tr.I3, tr.I2, tr.I1, tr.I0);

      if ({tr.a, tr.b} === exp)
        $display("[SCB] PASS: I3I2I1I0=%b%b%b%b exp=%b got=%b",
                 tr.I3, tr.I2, tr.I1, tr.I0, exp, {tr.a, tr.b});
      else begin
        $display("[SCB] FAIL: I3I2I1I0=%b%b%b%b exp=%b got=%b",
                 tr.I3, tr.I2, tr.I1, tr.I0, exp, {tr.a, tr.b});
        error_count++;
      end
    end
  endtask
endclass
