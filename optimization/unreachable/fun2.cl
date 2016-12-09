class Main {
	main() : Object {
		(new A)@A.foo()
	};
};

class A inherits IO {
	foo() : Object {out_string("hello world\n")};
	bar() : Object {out_string("foobar\n")};
};
