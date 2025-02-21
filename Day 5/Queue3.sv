module queue;
  
  bit [7:0] unpacked_queue[$][3]; 
  
  initial begin
    
    unpacked_queue.push_front('{ $random, $random, $random });
    $display("unpacked_queue[%0d] = {%0d, %0d, %0d}", unpacked_queue.size()-1, 
             unpacked_queue[0][0], unpacked_queue[0][1], unpacked_queue[0][2]);

    unpacked_queue.push_front('{ $random, $random, $random });
    $display("unpacked_queue[%0d] = {%0d, %0d, %0d}", unpacked_queue.size()-1, 
             unpacked_queue[0][0], unpacked_queue[0][1], unpacked_queue[0][2]);

    unpacked_queue.push_front('{ $random, $random, $random });
    $display("unpacked_queue[%0d] = {%0d, %0d, %0d}", unpacked_queue.size()-1, 
             unpacked_queue[0][0], unpacked_queue[0][1], unpacked_queue[0][2]);
  end
endmodule



// OUTPUT

// # KERNEL: unpacked_queue[0] = {36, 129, 9}
// # KERNEL: unpacked_queue[1] = {99, 13, 141}
// # KERNEL: unpacked_queue[2] = {101, 18, 1}
