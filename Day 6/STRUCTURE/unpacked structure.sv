module struct_example;
  struct {
    string name;
    int roll_num;
    int mark;
  }student_detail;
  
  initial begin
    student_detail.name = "kural";
    student_detail.roll_num=3;
    student_detail.mark    =499;
    $display("-----------------------------------------------");
    $display("student detail:%p",student_detail);
    $display("-----------------------------------------------");
  end
endmodule
