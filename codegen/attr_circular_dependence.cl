class Main inherits IO {
	
	main() : Object {{
		out_int(new A.getA());
		out_string("\n");
		out_int(new A.getA());
		out_string("\n");
		out_int(new B.getA());
		out_string("\n");
		out_int(new B.getA());
		out_string("\n");
		out_int(new C.getA());
		out_string("\n");
		out_int(new C.getA());
		out_string("\n");
	}};
};

class A {
	a : Int <- b;
	b : Int <- a;
	getA() : Int {
		a
	};
	getB() : Int {
		b
	};
};

class B {
	a : Int <- 5;
	b : Int <- a;
	getA() : Int {
		a
	};
	getB() : Int {
		b
	};
};

class C {
	a : Int <- b;
	b : Int <- 5;
	getA() : Int {
		a
	};
	getB() : Int {
		b
	};
};