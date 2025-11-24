class transaction;
  randc bit I0;
  randc bit I1;
  randc bit I2;
  randc bit I3;
  bit a,b;
  function void display(string tag);
    $display("[%s] I3 I2 I1 I0=%b %b %b %b a=%0d b=%0d time=%0t",tag, I3, I2, I1, I0, a, b, $time);
  endfunction
endclass
