// 6. Write a test bench to test the dynamic array data type and its predefined
// methods by using the following statements
// a. declare two dynamic arrays d1, d of type int
// b. initialize d array elements with (9,1,8,3,4,4)
// c. allocate six elements in array d1
// d. initialize array d1 with index as its value
// e. display d1 and its size
// f. delete array d1
// g. reverse, sort, reverse sort, and shuffle the array d 


module dynamic;
  int d[];
  int d1[];
  
  initial begin
    d='{9,1,8,3,4,4};
    d1=new[6];
    
    foreach(d1[i])begin
      d1[i]=i;
    end
    
    $display("d=%0p,d1=%0p",d.size(),d1.size());
    
    d1.delete();
    
    d.reverse();
    $display("values =%0p",d);
    
    d.sort();
     $display("values =%0p",d);
    
    d.rsort();
     $display("values =%0p",d);
    
    d.shuffle();
     $display("values =%0p",d);
  end
endmodule



// OUTPUT

// d=6,d1=6
// values ='{4, 4, 3, 8, 1, 9} 
// values ='{1, 3, 4, 4, 8, 9} 
// values ='{9, 8, 4, 4, 3, 1} 
// values ='{4, 8, 4, 9, 1, 3} 
