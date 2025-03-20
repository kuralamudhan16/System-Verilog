class parent;
  rand bit[5:0] value;
  constraint value_p{value >0;value<10;}
endclass

class child extends parent;
  constraint value_p{value inside {[10:30]};}
endclass

module constraint_inh;
  parent p;
  child  c;
  
  initial begin
    p=new();
    c=new();
    
    repeat(3)begin
      p.randomize();
      $display(" parent class:value=%0d",p.value);
    end
    
    repeat(3)begin
      c.randomize();
      $display("child class:value=%0d",c.value);
    end
  end
endmodule
