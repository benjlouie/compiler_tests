class Main inherits IO {
  --Checking to see if you can do basic stuff with the basic types.
  a : Int <- 1;
  a1 : String <- "hello";
  a2 : Bool <- false;
  b : Int <- a;
  b1 : String <- a1;
  b2 : Bool <- a < b;
  c : Int <- b + a - a * a / b / a;
  c1 : String <- b1 <- a1;
  c2 : Bool <- a <= c;
  d1 : Int <- boo();

  d : Bool <- let a : String <- "blah" in
    {
      out_string(a1);
      if a1.length() < 3 then
        {
            out_string(" true - bad\n");
            true;
        }
      else
        {
            out_string(" false - good\n");
            false;
        }
      fi;
    };
  e : String <- if d then "halb" else "blah" fi;
  f : Object <- while e.length() < 15 loop
    { 
      out_string("Should print thrice: "); 
      out_string((e <- e.concat(" wooo")).concat( " hooo\n")); 
    } pool;
  g : Bool <- isvoid f = isvoid f;

  h : Main <- 
    {
        out_string("These should be equal to -1 or 1: ");
        out_int(a);
        out_string(", ");
        out_int(~b);
        out_string(", ");
        out_int(c);
        out_string("\n");
        out_string("This should be 3: ");
        out_int(d1);
        out_string("\n");
    };

   i : Main <-
    {
        h.out_string("These should be equal to hello: ");
        h.out_string(a1);
        h.out_string(", ");
        h.out_string(b1);
        h.out_string(", ");
        h.out_string(c1);
        h.out_string("\n");
    };
   j : Main <-
    {
        i.out_string("Does this work? It should\n");
        i.out_string("This should be false: ");
        if not g then out_string("true\n") else out_string("false\n") fi;
    };


  main() : Object { {
    out_string("This should be ell: ");
    out_string("hello, ".substr(1,3));
    out_string("\n");
  } } ;

  boo() : Int {
    3
  };
} ; 

class Foo {

};
