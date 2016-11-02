(* the following 2 classes test errors within formals
   Each error should be caught in one execution of the parser
   The parser should be able to recognize errors, and continue on
   to the next feature *)
class A {
	foo(random text) : Object { --formals require id : Type
		1
	};
	bar(a : b) : Object { --two ids
		1
	};
	baz(a : Int b : Int, c : Int) : Object { --missing ,
		1
	};
	a(Int : Int) : Object {1}; --two Types
};

class Main inherits IO {
	main() : SELF_TYPE {
		out_string("Hello world!\n")
	};
};
