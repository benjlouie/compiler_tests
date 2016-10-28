(* This class ensures that the parser tests that formal
   and actual parameters are correctly parsed *)
class E {
	a : Int <- b;
	b : Int <- a;
	foo() : SELF_TYPE {self};
	bar(s : String) : SELF_TYPE {foo()};
	baz(a : Int, b : Int, c : Int, d : Int, e : Int, f : Int, g : Int, h : Int, j : Int, k : Int) : String {"0 1 or many lol"};
	c : Int <- 5;
	fun() : SELF_TYPE {
		bar(baz(1, 2, 3, 4, 5, 6, 7, 8, 9, 10))
	};
	d : SELF_TYPE <- main();
	e : E;
};
