// 1. Sort the contents of a dynamic array which contains 10 elements in it.




module dynamic;
  int a[];
  initial begin
    a = new[10];
    foreach (a[i])
      a[i] = $urandom_range(1, 100); 

   
    $display("Before Sorting:");
    foreach (a[i])
      $display("a[%0d] = %0d", i, a[i]);

   
    a.sort();

    
    $display("After Sorting:");
    foreach (a[i])
      $display("a[%0d] = %0d", i, a[i]);
    $display("values = %p",a);
  end
  
endmodule



// OUTPUT

// # KERNEL: Before Sorting:
// # KERNEL: a[0] = 70
// # KERNEL: a[1] = 30
// # KERNEL: a[2] = 61
// # KERNEL: a[3] = 71
// # KERNEL: a[4] = 87
// # KERNEL: a[5] = 45
// # KERNEL: a[6] = 30
// # KERNEL: a[7] = 84
// # KERNEL: a[8] = 17
// # KERNEL: a[9] = 51
// # KERNEL: After Sorting:
// # KERNEL: a[0] = 17
// # KERNEL: a[1] = 30
// # KERNEL: a[2] = 30
// # KERNEL: a[3] = 45
// # KERNEL: a[4] = 51
// # KERNEL: a[5] = 61
// # KERNEL: a[6] = 70
// # KERNEL: a[7] = 71
// # KERNEL: a[8] = 84
// # KERNEL: a[9] = 87
// # KERNEL: values = '{17, 30, 30, 45, 51, 61, 70, 71, 84, 87}
