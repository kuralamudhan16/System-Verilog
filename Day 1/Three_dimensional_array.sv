module Three_dimensional_array;
  int array[3][3][3] = '{'{'{1, 10, 100}, '{2, 20, 200}, '{3, 30, 300}},
                         '{'{4, 40, 400}, '{5, 50, 500}, '{6, 60, 600}},
                         '{'{7, 70, 700}, '{8, 80, 800}, '{9, 90, 900}}
                        };
  initial begin
    foreach (array[i,j, k]) begin
      $display("array[%0d][%0d][%0d] = %0d", i,j, k, array[i][j][k]);
    end
  end
endmodule



OUTPUT

KERNEL: array[0][0][0] = 1
# KERNEL: array[0][0][1] = 10
# KERNEL: array[0][0][2] = 100
# KERNEL: array[0][1][0] = 2
# KERNEL: array[0][1][1] = 20
# KERNEL: array[0][1][2] = 200
# KERNEL: array[0][2][0] = 3
# KERNEL: array[0][2][1] = 30
# KERNEL: array[0][2][2] = 300
# KERNEL: array[1][0][0] = 4
# KERNEL: array[1][0][1] = 40
# KERNEL: array[1][0][2] = 400
# KERNEL: array[1][1][0] = 5
# KERNEL: array[1][1][1] = 50
# KERNEL: array[1][1][2] = 500
# KERNEL: array[1][2][0] = 6
# KERNEL: array[1][2][1] = 60
# KERNEL: array[1][2][2] = 600
# KERNEL: array[2][0][0] = 7
# KERNEL: array[2][0][1] = 70
# KERNEL: array[2][0][2] = 700
# KERNEL: array[2][1][0] = 8
# KERNEL: array[2][1][1] = 80
# KERNEL: array[2][1][2] = 800
# KERNEL: array[2][2][0] = 9
# KERNEL: array[2][2][1] = 90
# KERNEL: array[2][2][2] = 900
