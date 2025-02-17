/*module Single dimensional array;
  int array[5] = '{10, 20, 30, 40, 50};
  initial begin
    foreach (array[i]) begin
      $display("array[%0d] = %0d", i, array[i]);
    end
  end
endmodule
*/

/*module Single dimensional array;
  int array[5] = '{10, 20, 30, 40, 50};

  initial begin
    for (int i = 0; i < 5; i++) begin
      $display("array[%0d] = %0d", i, array[i]);
    end
  end
endmodule
*/

module Single_dimensional_array;
  int array[5] = '{1, 2, 3, 0,4 };

  initial begin
    for (int i = 0; i < $size(array); i++) begin
      $display("array[%0d] = %0d", i, array[i]);
    end
  end
endmodule 






OUTPUT

# KERNEL: array[0] = 1
# KERNEL: array[1] = 2
# KERNEL: array[2] = 3
# KERNEL: array[3] = 0
# KERNEL: array[4] = 4
