(* The following three classes test to ensure
   that precedence is correct within the parser *)
class A {
	a : Int;
	b : Int;
	c : Int;
	test1() : Int {{
		1 + 1 * 1 + 1;
		(1 + 1) * (1 + 1);
	}};
	test2() : Int { {
		isvoid 1 + 1;
		1 + isvoid 1;
		1 + 2 * 3 / 4 - 1;
		1 - 2 / 3 * 4 + 1;
		1 < 0;
		1 <=  5;
		1 = 6;
		5 <= 3;
		not 1 < 4;
		isvoid 0 = true;
		a <- b <- c <- 4;
		a <- 1 + b <- c <- 4 * 2;
	}};
	foo() : Int {
		3
	};
};

class B inherits A {
	foo() : Int {
		5
	};
};

class C inherits B {
	bar : B <- new B;

	test3() : Int { {
		~b.foo() + b.foo() * ~b@A.foo() / b@B.foo();
	}};

	test4() : Int {
		let a : Int <- let b : Int <- 3 in b in let c : Int <- 4 in 5
	};
};
