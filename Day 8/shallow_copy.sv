class sample;
  bit[3:0]a;
endclass

module class_example;
  sample tr1,tr2;
  initial begin
    tr1=new();
    tr1.a=8;
    tr2=new tr1;
    $display("-----------------------");
    $display("tr1.a=%0d",tr1.a);
    $display("tr2.a=%0d",tr2.a);
    $display("-----------------------");
    
    tr2.a=2;
    $display("-----------------------");
    $display("tr1.a=%0d",tr1.a);
    $display("tr2.a=%0d",tr2.a);
    $display("-----------------------");
    
  end
endmodule
    
