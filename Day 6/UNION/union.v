module union_example;
  union{
    int a;
    byte b;
  }trial;
  initial begin
    $display("--------------------------------------");
    trial.a=32'hff_ffff;
    $display("a=%0h",trial.a);
    
    trial.b=3;
    $display("b=%0b",trial.b);
    
    $display("wrong result");
    
    $display("trial:%p",trial);
    
    $display("--------------------------------------");
  end
endmodule
