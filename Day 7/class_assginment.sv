class transaction;
  shortint data;
endclass

module class_example;
  transaction tr1;
  transaction tr2;
  
  initial begin
    tr1=new();
    tr1.data = 10;
    tr2=tr1;
    
    $display("tr1.data = %0h",tr1.data);
    $display("tr2.data = %0h",tr2.data);
    
    tr2.data=32'h38;
    
    $display("tr1.data = %0h",tr1.data);
    $display("tr2.data = %0h",tr2.data);
  end
endmodule
    
