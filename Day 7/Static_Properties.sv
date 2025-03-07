class mustang;
  static int m_id;
  int id;
  function new();
  m_id++;
  id++;
endfunction
endclass

module class_example;
  mustang m[5];
  initial begin
    foreach(m[i])begin
      m[i]=new();
      $display("value of [%0d]=[%0d]",m[i].m_id,m[i].id);
    end
  end
endmodule
