class Main {
	main(): Object {
		(new A).foo()
	};
};

class A inherits IO {
	foo() : Object {
		out_string("foo\n")
	};
	bar() : Object {
		out_string("bar")
	};
};
