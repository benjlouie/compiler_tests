(*
* Test case of passing two formals into a method
* Error at Line 9
*)

class Main inherits IO{
	a : Int;
	b : Int;

	init(x : Int, x : Int): Int{ (* Cannot have two formals passed  *)
	{
		a <- x;
		b <- x;
	}
	};

	main() : SELF_TYPE {
		out_string("Hello Nerds! \n")
	};
};
