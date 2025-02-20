module batch_4;
  string batch_4[$];
  
  initial begin
    $display("Initial members:batch_4=%0d",batch_4.size());
    
    batch_4 = {"valan","nikathan","roy"};
    $display("team members:batch_4=%0d",batch_4.size());
    
    $display("--------------------------");
    
    
    batch_4.insert(1,"kural");
    batch_4.insert(2,"guhan");
    batch_4.insert(4,"kirithik");
    batch_4.insert(6,"jana");
    batch_4.insert(7,"aslin");
    batch_4.insert(8,"kabilan");
    $display("team members:batch_4=%0d",batch_4.size());
    
    foreach(batch_4[i]) $display("batch_4[%0d]=%s",i,batch_4[i]);
  end
endmodule


OUTPUT

# KERNEL: Initial members:batch_4=0
# KERNEL: team members:batch_4=3
# KERNEL: --------------------------
# KERNEL: team members:batch_4=9
# KERNEL: batch_4[0]=valan
# KERNEL: batch_4[1]=kural
# KERNEL: batch_4[2]=guhan
# KERNEL: batch_4[3]=nikathan
# KERNEL: batch_4[4]=kirithik
# KERNEL: batch_4[5]=roy
# KERNEL: batch_4[6]=jana
# KERNEL: batch_4[7]=aslin
# KERNEL: batch_4[8]=kabilan
