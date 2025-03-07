class transaction;
  bit[31:0]data;
  int id;
endclass

module class_example;
  transaction tr[5];
  initial begin
    foreach(tr[i])begin
      tr[i]=new();
      tr[i].data=i*i;
      tr[i].id = i+1;
    end
    foreach (tr[i])$display("value of [%0d]=[%0d]",tr[i].data,tr[i].id);
  end
endmodule
