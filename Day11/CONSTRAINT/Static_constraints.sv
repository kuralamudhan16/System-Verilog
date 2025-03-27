class seq_item;
  rand bit[7:0] value;
  rand bit[7:0] value1;
  
  constraint value_c{value inside {[20:30]};}
  static constraint value1_c{ value1 inside {50,150,250};}
  
endclass

module constraint_example;
  seq_item item,item1;
  
  initial begin
    item=new();
    item1=new();
    
    item.randomize();
    item1.randomize();
    $display("Before disabiling constraint");
    $display("item:value =%0d,value1=%0d",item.value,item.value1);
    $display("item1:value =%0d,value1=%0d",item.value,item.value1);
    
    item1.value1_c.constraint_mode(0);
    item.randomize();
    item1.randomize();
    $display("After disabling constraint for all value2 alone");
    $display("item: value = %0d, value1 = %0d", item.value, item.value1);
    $display("item1: value = %0d, value1 = %0d", item1.value, item1.value1);
  end
endmodule


// OUTPUT

// Before disabiling constraint
// item:value =22,value1=150
// item1:value =22,value1=150
// After disabling constraint for all value2 alone
// item: value = 22, value1 = 63
// item1: value = 30, value1 = 72
