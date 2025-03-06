module struct_example;
  struct{string name;
         int roll_num;
         int mark;
        }student_detail;
  initial begin
    student_detail.name = "kathir";
    student_detail.roll_num = 31;
    student_detail.mark = 499;
    $display("student detail:%p",student_detail);
    $display("student:name=%s,roll_num=%o=0d,mark=%0d",student_detail.name,student_detail.roll_num,student_detail.mark);
  end
endmodule
