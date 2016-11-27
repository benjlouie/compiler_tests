class Main inherits IO {
	
	a : Int <- let a : Int in 3;
	b : Int <- let a : Int <- 4 in a;
	c : Int <- let a : Int <- 5, b : Int <- 6 in a + b;
	d : Int <- let 
		a : Int <- let a : Int <- 7 in a
		,b : Int <- let b : Int <- 8 in b
		in a + b;
	e : Int <- let 
		a : Int <- let b : Int <- 7 in b
		, b : Int <- let c : Int <- 8 in c
		in let c : Int <- 10 
			in a + b;
	
	main() : Object {{
		out_int(a);
		out_string("\n");
		out_int(b);
		out_string("\n");
		out_int(c);
		out_string("\n");
		out_int(d);
		out_string("\n");
		out_int(e);
		out_string("\n");
	}};
};