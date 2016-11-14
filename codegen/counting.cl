class Print inherits IO {
	print(o : Object) : Object {
		case o of
			i : Int => {
				out_int(i);
				out_string("\n");
			};
			s : String => {
				out_string(s);
				out_string("\n");
			};
			b : Bool => 
				if b then
					print(1)
				else
					print(0)
				fi;
		esac
	};
};

class A {
	a : Int <- 14;
	foo(a : Int, b : Int, c : Int) : Int {c};
	bar(a : Int, b : Int) : Int {b};
	baz() : Int {a};
};
class B inherits A {
	b : Int <- 14;
	foo(a : Int, b : Int, c : Int) : Int {a};
	inc() : Int {b <- b + 1};
	baz() : Int {b};
};
class C {
	a : Int <- 18;
	getA() : Int {a};
};

class Main {
	p : Print <- new Print;
	val : Int <- 4;
	nop : Object;
	b : A <- new B;
	a : A <- new A;
	c : B <- new B;
	main() : Object {{
		p.print("0's:");
		p.print(false);
		p.print(true = false);
		p.print(6 <= 5);
		p.print("\n");

		p.print("1's:");
		p.print(not false);
		p.print(0 < 1);
		p.print(isvoid nop);
		p.print(5 <= 5);
		p.print("\n");

		p.print("2 to 20");
		p.print("2");
		p.print(1 + 2);
		p.print(4);
		p.print((1 + 3) * 2 - 3);
		let val : Int <- 6 in
			p.print(val);
		p.print(1073741823 / 153391689);
		p.print(~~8);
		p.print(case b of 
			o : Object => 0;
			a : A => 0;
			s : String => 0;
			m : Main => 0;
			b : B => 9;
		esac);
		p.print({1; 2; 3; 4; 5; 6; 7; 8; 9; 10;});
		p.print(a.bar(1, 11));
		p.print(b.foo(12, 0, 0));
		p.print(b@A.foo(0, 0, 13));
		p.print(a.baz());
		p.print({c.inc(); c.baz();});
		p.print(16 + let val : Int <- 0 in val);	
		p.print(let a : Int <- 10, b : Int <- 7 in a + b);
		p.print((new C).getA());
		p.print(val <- 19);
		p.print(val + 1);
		p.print("\n");
		
		p.print("0 to 20");
		let i : Int <- 0 in
		while i <= 20 loop{
			p.print(i);
			i <- i + 1;
		} pool;
	}};
};
