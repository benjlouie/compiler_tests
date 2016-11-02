(* The following 5 classes test errors within class definitions
   The Parser should be able to catch all errors commented in one
   run of the parser. *)

class A {
	random text --obvious error
	x : Int;
};

class B {
	x : Int --missing semicolon
	y : Int;
	baz(a : Int, b : Int, c : Int) : Object {
		1
	};
};

class C {
	foo : Object { --no parenthesis for method
		1
	};
};

class C {
	foo() { --missing return type of method and semicolon
		1
	};
};

class D {
	foo() : {1}; --missing return type of method
};

class Main inherits IO {
	main() : SELF_TYPE {
		out_string("Hello world!\n")
	};
};
