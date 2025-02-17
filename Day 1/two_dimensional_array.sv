module two_dimensional_array;
  int array[5][2] = '{'{2,10},'{2,20},'{3,30},'{4,40},'{5,50}};
  initial begin
    foreach (array[i,j]) begin
      $display("array[%0d][%0d] = %0d", i,j, array[i][j]);
    end
  end
endmodule






OUTPUT

KERNEL: array[0][0] = 2
# KERNEL: array[0][1] = 10
# KERNEL: array[1][0] = 2
# KERNEL: array[1][1] = 20
# KERNEL: array[2][0] = 3
# KERNEL: array[2][1] = 30
# KERNEL: array[3][0] = 4
# KERNEL: array[3][1] = 40
# KERNEL: array[4][0] = 5
# KERNEL: array[4][1] = 50
