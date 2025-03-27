class seq_item;
  rand bit [7:0] value;
  rand bit [7:0] value1;
  
  constraint value_c{value inside {[10:30]};}
  constraint value1_c{value1 inside{40,70,80};}
  
endclass

module constraint_example;
  seq_item item;
  
  initial begin
    item=new();
    
    item.randomize();
    $display("Before disabling randomization:value=%0d,value1=%0d",item.value,item.value1);
    
    item.rand_mode(0);// to disable the all randomize variable
    item.randomize();
    $display("After disabling randomization for all variable in a class (retain old value):value=%0d,value1=%0d", item.value,item.value1);
    
    
    item.rand_mode(1);// to enable the randomization 
    item.randomize();
    $display("After enabling randomization:value=%0d,value1=%0d",item.value,item.value1);
    
    item.value1.rand_mode(0);  // To disable randomization for value2 variable alone
    item.randomize();
    $display("After disabling randomization for value1 variables in a class: value = %0d, value1 = %0d", item.value, item.value1);
    
    $display("rand_mode function returns for value = %0d, value1 = %0d", item.value.rand_mode(), item.value1.rand_mode());
  end
endmodule


// OUTPUT


// Before disabling randomization:value=14,value1=70
// After disabling randomization for all variable in a class (retain old value):value=14,value1=70
// After enabling randomization:value=15,value1=80
// After disabling randomization for value1 variables in a class: value = 22, value1 = 80
// rand_mode function returns for value = 1, value1 = 0
