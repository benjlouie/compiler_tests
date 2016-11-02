(* This is the master file for testing errors within the parser
   The following contains multiple definitions of classes and Main
   because the file was created by concatenating smaller files together
   test more specific cases for the parser. *)


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
(* The following 4 classes test errors in formals and expressions
   All of the errors here should be caught in one execution of the parser
   The parser should be able to recognize all the malformed expressions
   and continue on to the next formal
   @note: currently coolc will miss the error: a-- in class C*)
class A {
	x : Int <- b@B.x; --missing parenthesis for method call
	y : Int <- z <-- 1; -- extra - for assignment
	z : Int <- foo(; --missing right paren
	foo() : Object {
		x++ --++ not defined
	};
	bar(a : Int) : Object {
		A.x --missing parenthesis for method call
	};
	baz(a : Int, b : Int, c : Int) : Object {
		-a --unary minus not defined
	};
};

class B {
	x : Int <- if true then 1 else 3; --missing fi
	y : Int <- while true loop pool; --missing expression in loop
	z : Int <- {; --missing right bracket
	foo() : Object {
		let a : Int 3 --missing in for let
	};
	bar(a : Int) : Object {
		case 1 of 
		a : Int => 3;
		b : Obj => 4; --missing esac to finish case
	};
	baz(a : Int, b : Int, c : Int) : Object {
		new a --new requires type not object/method
	};
};

class C {
	x : Int <- a--; -- "--" not defined
	y : Int <- *; -- * requires two arguments
	z : Int <- / foo; -- missing first arguments for '/'
	foo() : Object {
		~Object -- ~undefined for types
	};
	bar(a : Int) : Object {
		1 < --missing second operand
	};
	baz(a : Int, b : Int, c : Int) : Object {
		2 <= --missing second operand
	};
};


class Main inherits IO {
	a : Int <- =; -- missing operands
	b : Int <- not; --missing operand
	c : Int <- ()); --unmatched parenthesis and missing expression within parenthesis
	d : Int <- }; --missing '{'
	main() : SELF_TYPE {
		out_string("Hello world!\n")
	};
};
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
