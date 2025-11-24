`include "environment.sv"
program test(intr in);
  environment env;
  initial
    begin
      env=new(in);
      env.run;
    end
endprogram