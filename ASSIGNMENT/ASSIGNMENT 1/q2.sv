// 2. Write a snippet in SV to insert one queue into another queue. (Do it with
// & without using array methods)





module queue;
  int a[$] = {1,2,3};
  int b[$] = {4,5,6};
  
  initial begin
//     a={a,b};
    foreach (b[i])
      a.push_back(b[i]);
    $display("push back of one queue into another queue:values = %0p",a);
  end
endmodule
    


// OUTPUT

// # KERNEL: push back of one queue into another queue:values = 1 2 3 4 5 6
