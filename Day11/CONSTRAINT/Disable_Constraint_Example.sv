class seq_item;
  rand bit[7:0] value;
  rand bit[7:0] value1;
  
  constraint value_c{value inside{[10:30]};}
  constraint value1_c{value1 inside{50,120,240};}
  
endclass

module comstraint_example;
  seq_item  item;
  
  initial begin
    item=new();
    
    item.randomize();
    $display("Before disabling constraint");
    $display("item:value=%0d,value1=%0d",item.value,item.value1);
    
    item.value1_c.constraint_mode(0);
    item.randomize();
    $display("After disabling constraint for all  value1 alone");
    $display("item: value = %0d, value1= %0d", item.value, item.value1);
    $display("constraint_mode function returns for value = %0d, value1= %0d",item.value_c.constraint_mode(), item.value1_c.constraint_mode());
  end
endmodule



// OUTPUT

// Before disabling constraint
// item:value=14,value1=120
// After disabling constraint for all  value1 alone
// item: value = 15, value1= 63
// constraint_mode function returns for value = 1, value1= 0
