class error_trans;
  bit[31:0]err_data;
  bit error;
  
  function new(bit[31:0] err_data,bit error);
    this.err_data = err_data;
    this.error = error;
  endfunction
endclass

class transaction;
  bit [31:0] data;
  int id;
  error_trans err_tr;
  
  function new();
    data = 100;
    id   = 8;
    err_tr=new(32'hffff_ffff,1);
  endfunction
  
  function void display();
    $display("transaction:data=%0d,id=%0d",data,id);
    $display("error_trans:err_data=%0h,error=%0d\n",err_tr.err_data,err_tr.error);
  endfunction
  
  
  function deep_copy(transaction tr);
    this.data = tr.data;
    this.id   = tr.id;
    this.err_tr.err_data = tr.err_tr.err_data;
    this.err_tr.error = tr.err_tr.error;
  endfunction
endclass

module deep_copy_example;
  transaction tr1,tr2;
  
  initial begin
    tr1=new();
    $display("calling display method using tr1");
    tr1.display();
    
    tr2=new();
    tr2.deep_copy(tr1);
    $display("After deep copy tr1-->tr2");
    $display("calling dispaly method using tr2");
    
    tr2.display();
    $display("------------------------------------");
    
    tr1.data = 200;
    tr1.id = 2;
    tr1.err_tr.err_data = 32'h1234;
    tr1.err_tr.error = 0;
    
    $display("calling display method using tr1");
    tr1.display();
    $display("calling display method using tr2");
    tr2.display();
  end
endmodule


//               OUTPUT
// # KERNEL: calling display method using tr1
// # KERNEL: transaction:data=100,id=8
// # KERNEL: error_trans:err_data=ffffffff,error=1
// # KERNEL: 
// # KERNEL: After deep copy tr1-->tr2
// # KERNEL: calling dispaly method using tr2
// # KERNEL: transaction:data=100,id=8
// # KERNEL: error_trans:err_data=ffffffff,error=1
// # KERNEL: 
// # KERNEL: ------------------------------------
// # KERNEL: calling display method using tr1
// # KERNEL: transaction:data=200,id=2
// # KERNEL: error_trans:err_data=1234,error=0
// # KERNEL: 
// # KERNEL: calling display method using tr2
// # KERNEL: transaction:data=100,id=8
// # KERNEL: error_trans:err_data=ffffffff,error=1
// # KERNEL: 
