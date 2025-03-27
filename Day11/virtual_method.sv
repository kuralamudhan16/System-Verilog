class packet;
  string a;
  int    b;
  
  function new();
    a="ADMK";
    b=10;
  endfunction
  
  virtual function void display();
    $display("a=%s",a);
    $display("b=%0d",b);
  endfunction
endclass

class pack extends packet;
  string c;
  int    d;
  
  function new();
    c = "DMK";
    d = 20;
  endfunction
  
  virtual function void display();
    $display("c=%s",c);
    $display("d=%d",d);
  endfunction
endclass

class pack1 extends packet;
  string e;
  byte  f;
  
  function new();
    e="TVK";
    f=232;
  endfunction
  
  virtual function void display();
    $display("e=%s",e);
    $display("f=%d",f);
  endfunction
endclass

packet pp0,pp1;
pack p2;
pack1 p3;

module virt_fun;
   initial begin
     p2=new();
  p3=new();
  pp0= p2;
  pp1=new p3;
  
  $display("contents of pp0");
  pp0.display();
  $display("contents of pp1");
  pp1.display();
  end
endmodule
  

// OUTPUT

// ontents of pp0
// c=DMK
// d=         20
// contents of pp1
// e=TVK
// f=        -24
