class parent_cls;
  bit[31:0] data_p;
  
  function void display_p();
    $display("---------------------------------------");
    $display("parent_cls:value of data = %0h",data_p);
    $display("---------------------------------------");
  endfunction
endclass

class child_c1 extends parent_cls;
  bit[31:0] data_c1;
  function void display_c1();
    $display("---------------------------------------");
    $display("child_c1:value of data=%0h",data_c1);
    $display("---------------------------------------");
  endfunction
endclass

class child_c2 extends parent_cls;
  bit[31:0] data_c2;
  
  function void display_c2();
    $display("---------------------------------------");
    $display("child_c2:value of data=%0h",data_c2);
    $display("---------------------------------------");
  endfunction
endclass

class child_A extends child_c1;
  bit[31:0] data_cA;
  
  function void display_cA();
    $display("---------------------------------------");
    $display("child_A:value of data=%0h",data_cA);
    $display("---------------------------------------");
  endfunction
endclass

class child_B extends child_A;
  bit[31:0] data_cB;
  
  function void display_cB();
    $display("---------------------------------------");
    $display("child_B:value of data=%0h",data_cB);
    $display("---------------------------------------");
  endfunction
endclass


module class_example;
  initial begin
    child_B  c_b;
    c_b = new();
    c_b.data_p  =32'h9;
    c_b.data_c1 =32'h8;
    c_b.data_cA =32'hABC;
    c_b.data_cB =32'hCBA;
    
    c_b.display_p();
    c_b.display_c1();
    c_b.display_cA();
    c_b.display_cB();
  end
endmodule
