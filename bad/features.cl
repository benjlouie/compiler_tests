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
