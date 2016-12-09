class Main inherits IO {
  main() : Object {{
	out_string("The testing of 2--1 cannot be tested without constant prop");
    out_int(2-1);
	out_string(" = 2 reduced\n");
	out_int(2-~1);
	out_string(" = 3 not reduced\n");
	out_int(2-2);
	out_string(" = 0 not reduced\n");
	out_int(2-~2);
	out_string(" = 4 not reduced\n");
  }};
} ; 
