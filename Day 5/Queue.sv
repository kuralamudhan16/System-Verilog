module queue;
  
  bit [7:0] unpacked_queue[$][3]; 
  initial begin
    
    for (int i = 0; i < 3; i++) 
      unpacked_queue.push_front('{ $random, $random, $random });

    
    foreach (unpacked_queue[i]) 
      $display("unpacked_queue[%0d] = {%0d, %0d, %0d}", i, unpacked_queue[i][0], unpacked_queue[i][1], unpacked_queue[i][2]);
  end
endmodule


// OUTPUT

// # KERNEL: unpacked_queue[0] = {101, 18, 1}
// # KERNEL: unpacked_queue[1] = {99, 13, 141}
// # KERNEL: unpacked_queue[2] = {36, 129, 9}
