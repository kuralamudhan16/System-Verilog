module associative_array;
   bit [7:0] array [int];
   int index;
  
  initial begin
    
    array[5] = 2;
    array[10] = 4;
    array[7] = 6;
    array[9] = 8;
    array[20] = 10;
    array[13] = 12;
    
    foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);
    
    
    $display("size = %0d, Number of entries = %0d of array", array.size(), array.num());
    
    
    
    if(array.exists(7)) $display("An element exists at index = 7");
    else $display("An element doesn't exists at index = 7");
    
    if(array.exists(8)) $display("An element exists at index = 8");
    else $display("An element doesn't exists at index = 8");
    
    
    array.first(index);
    $display("First index of array = %0d", index);
    
    array.last(index);
    $display("Last index of array = %0d", index);
    
    index = 9;
    array.prev(index);  
    $display("Prev index of 9 is %0d", index);
    
    index = 10;
    array.next(index); 
    $display("Next index of 10 is %0d", index);
    
    
    
    array.delete(7);
    

    $display("After deleting element having index 7");
    foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);

    array.delete();
    $display("size = %0d of array", array.size());
  end
endmodule






OUTPUT

# KERNEL: array[5] = 2
# KERNEL: array[7] = 6
# KERNEL: array[9] = 8
# KERNEL: array[10] = 4
# KERNEL: array[13] = 12
# KERNEL: array[20] = 10

# KERNEL: size = 6, Number of entries = 6 of array
# KERNEL: An element exists at index = 7
# KERNEL: An element doesn't exists at index = 8
# KERNEL: First index of array = 5
# KERNEL: Last index of array = 20
# KERNEL: Prev index of 9 is 7
# KERNEL: Next index of 10 is 13

# KERNEL: After deleting element having index 7
# KERNEL: array[5] = 2
# KERNEL: array[9] = 8
# KERNEL: array[10] = 4
# KERNEL: array[13] = 12
# KERNEL: array[20] = 10

# KERNEL: size = 0 of array
