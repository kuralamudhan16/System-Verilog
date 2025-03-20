typedef enum{LOW,MID1,MID2,HIGH} scale;
class seq_item;
  rand bit[7:0] value_a[scale];
  rand bit[3:0] array[];
  constraint arr_size_c{value_a.size() == 4; array.size() inside{[2:5]};}
  
  constraint array_c { foreach(array[i]) { array[i] > i*i;}}
    constraint value_a_c{
      foreach(value_a[i]){
        value_a[i]<100;
        (i == LOW) -> value_a[i] < 30;
        (i == HIGH) -> value_a[i] > 70;
        (i == MID1) -> value_a[i] inside {[30:50]};
        (i == MID2) -> value_a[i] inside{[51:70]};
      }
    }
        endclass
        
        
        module constraint_example;
          seq_item item;
          
          initial begin
            item = new();
            
            repeat(5) begin
              item.randomize();
              foreach(item.value_a[i])$display("value[%s] =%0d",i.name(),item.value_a[i]);
              foreach(item.array[i]) $display("array[%0d] = %0d",i,item.array[i]);
            end
          end
        endmodule
