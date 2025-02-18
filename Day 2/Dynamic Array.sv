module dynamic_array;
  int array[];
  
  initial begin
    array = new[5];
    array = '{1,2,3,4,5};
    foreach(array[i])
      $display("array[%0d]= %0d",i,array[i]);
    
    
    $display("size of array=%0d",array.size);

    array = new[8](array);
    $display("size of array resizing=%0d",array.size());
    
    foreach(array[i])
     $display("array[%0d]=%0d",i,array[i]);
    
    array = new[6];
    $display("size of array =%0d",array.size());
    
    foreach(array[i])
      $display("arry[%0d]=%0d",i,array[i]);
    
    array.delete();
    $display("size of array after deleting=%0d",array.size());
    
  end
endmodule






OUTPUT
# KERNEL: array[0]= 1
# KERNEL: array[1]= 2
# KERNEL: array[2]= 3
# KERNEL: array[3]= 4
# KERNEL: array[4]= 5
# KERNEL: size of array=5
# KERNEL: size of array resizing=8
# KERNEL: array[0]=1
# KERNEL: array[1]=2
# KERNEL: array[2]=3
# KERNEL: array[3]=4
# KERNEL: array[4]=5
# KERNEL: array[5]=0
# KERNEL: array[6]=0
# KERNEL: array[7]=0
# KERNEL: size of array =6
# KERNEL: arry[0]=0
# KERNEL: arry[1]=0
# KERNEL: arry[2]=0
# KERNEL: arry[3]=0
# KERNEL: arry[4]=0
# KERNEL: arry[5]=0
# KERNEL: size of array after deleting=0
