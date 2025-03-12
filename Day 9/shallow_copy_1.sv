class copy_method;
  int addr;
endclass

class sample;
  bit[3:0]a;
  copy_method copy_inst;
endclass

module class_example;
  sample tr1,tr2;
  initial begin
    tr1=new();
    tr1.copy_inst=new();
    tr1.a=8;
    tr1.copy_inst.addr='hff;
    tr2=new tr1;
    $display("-------------------------------------");
    $display("tr1.a=%0d,tr1.copy_inst.addr=%0h",tr1.a,tr1.copy_inst.addr);
    $display("tr2.a=%0d,tr2.copy_inst.addr=%0h",tr2.a,tr2.copy_inst.addr);
    $display("-------------------------------------");
    
    tr2.a=2;
    tr2.copy_inst.addr='hf1;
    $display("-------------------------------------");
    $display("tr1.a=%0d,tr1.copy_inst.addr=%0h",tr1.a,tr1.copy_inst.addr);
    $display("tr2.a=%0d,tr2.copy_inst.addr=%0h",tr2.a,tr2.copy_inst.addr);
    $display("-------------------------------------");
  end
endmodule





//                  OUTPUT

// # KERNEL: -------------------------------------
// # KERNEL: tr1.a=8,tr1.copy_inst.addr=ff
// # KERNEL: tr2.a=8,tr2.copy_inst.addr=ff
// # KERNEL: -------------------------------------
// # KERNEL: -------------------------------------
// # KERNEL: tr1.a=8,tr1.copy_inst.addr=f1
// # KERNEL: tr2.a=2,tr2.copy_inst.addr=f1
// # KERNEL: -------------------------------------
