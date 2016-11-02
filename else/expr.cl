(* The following 2 classes test error recovery within expressions
   All errors should be able to be catch each error and move on to
   the next construct.
   First two errors should move on to the next block
   If an error exists in a let, the parser should be able to move on to
   the body of the let or the next variable being declared *)
class A {
	foo() : Object {{
	{
		err1 --missing semicolon
	};
	{
		err  2; --no operator between two expressions
	};
	}};
	bar(a : Int) : Object {{
		let a : Int <- 5 in
			1 > 0; --undefined operator
		let b : Int <- 5 in
			2 >= 3; -- another undefined operator
	}};
	baz(a : Int, b : Int, c : Int) : Object {
		let a : Int <- isvoid , b : Int <- a.a, c : Int in --a.a missing parenthesis
			+ --no parameters for +
	};
};

class Main inherits IO {
	main() : SELF_TYPE {
		out_string("Hello world!\n")
	};
};
