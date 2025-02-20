module batch_4;
  string batch_4[$];

  initial begin
    $display("initial team members: batch_4 = %0d", batch_4.size());

    batch_4 = {"tiger", "cheeta"};

    $display("---push back queue-----");
    batch_4.push_back("lion");

    foreach(batch_4[i]) 
      $display("batch_4[%0d] = %s", i, batch_4[i]);
    
      $display("--- push_front methods ---");
    batch_4.push_front("FOX");
    foreach(batch_4[i]) $display("batch_4[%0d] = %s", i, batch_4[i]);
    $display("-----------------------");
 
    $display("--- pop_back methods ---");
    batch_4.pop_back();
    foreach(batch_4[i]) $display("batch_4[%0d] = %s", i, batch_4[i]);
    $display("-----------------------");
    
    $display("--- pop_front methods ---");
    batch_4.pop_front();
    foreach(batch_4[i]) $display("batch_4[%0d] = %s", i, batch_4[i]);
    $display("-----------------------");
  end
endmodule




OUTPUT

# KERNEL: initial team members: batch_4 = 0
# KERNEL: ---push back queue-----
# KERNEL: batch_4[0] = tiger
# KERNEL: batch_4[1] = cheeta
# KERNEL: batch_4[2] = lion
# KERNEL: --- push_front methods ---
# KERNEL: batch_4[0] = FOX
# KERNEL: batch_4[1] = tiger
# KERNEL: batch_4[2] = cheeta
# KERNEL: batch_4[3] = lion
# KERNEL: -----------------------
# KERNEL: --- pop_back methods ---
# KERNEL: batch_4[0] = FOX
# KERNEL: batch_4[1] = tiger
# KERNEL: batch_4[2] = cheeta
# KERNEL: -----------------------
# KERNEL: --- pop_front methods ---
# KERNEL: batch_4[0] = tiger
# KERNEL: batch_4[1] = cheeta
# KERNEL: -----------------------
