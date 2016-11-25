class Main inherits IO {
	
	a : Int <- in_int();
	b : Int <- (new A).getInt();
	c : String <- in_string();
	d : String <- (new B).getString();
	
	
	main() : Object {{
		out_string("\n");
		out_int(a);
		out_string("\n");
		out_int(b);
		out_string("\n");
		out_string(c);
		out_string("\n");
		out_string(d);
		out_string("\n");
	}};
};

class A inherits IO {
	b : Int <- in_int();
	getInt() : Int {
		b
	};
};

class B inherits IO {
	a : String <- in_string();
	getString() : String {
		a
	};
};