module struct_example;
  typedef struct{string name;
                 int roll_num;
                 int mark;
                }student_detail;
  student_detail st1,st2;
  initial begin
    st1.name="kathir";
    st1.roll_num = 3;
    st1.mark = 499;
    
    st2 = '{"velan",7,500};
    
    $display("-----------------------------------------------");
    $display("student detail st1:%p",st1);
    $display("student detail st2:%p",st2);
    $display("student :name=%s,roll_num=%0d,mark=%0d",st1.name,st1.roll_num,st1.mark);
     $display("-----------------------------------------------");
  end
endmodule
