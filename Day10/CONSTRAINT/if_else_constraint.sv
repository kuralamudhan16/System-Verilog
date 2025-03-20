class seq_item;
  rand bit [7:0] value;
  rand enum{LOW,HIGH} scale;
  
  constraint scale_c{ if(scale == LOW) value < 50;
                    else value >=40;
                   }
endclass

module constraint_eample;
  seq_item item;
  
  initial begin
    item = new();
    
    repeat(5) begin
      item.randomize();
      $display("scale =%s,value =%d", item.scale.name(),item.value);
    end
    $finish;
  end
endmodule
