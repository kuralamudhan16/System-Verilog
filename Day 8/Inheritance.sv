class parent_class;
  int data;
  function calculation(int m_data);
    data=m_data;
  endfunction
endclass

class child_cls extends parent_class;
  int addr;
  function  display();
    $dispaly("-----------------------------------");
    $display("value of addr=%0h",addr);
    $display("-----------------------------------");
  endfunction
endclass

module class_example;
  initial begin
    child_cls c1;
    c1=new();
    c1.calculation(8);
    $display("-------------------------------------");
    $display("value of data=%0d",c1.data);
    $display("-------------------------------------");
    c1.addr=15;
    c1.display();
  end
endmodule
             
