-- This doesn't actually really test anytning
class Main inherits IO {
    a : Int <- 1;
    main() : Object {   
	    {out_int(a);(new A).foo(a);out_string("\nnew a is:");out_int(a);out_string("\n");}
  } ;
} ; 

class A inherits IO {

    foo(a : Int) : Object {
        {   out_string("\na is :");
            out_int(a);
            out_string("\n");
            a <- 2;
            out_string("\na is now:");
            out_int(a);
        }
    } ;
} ;
