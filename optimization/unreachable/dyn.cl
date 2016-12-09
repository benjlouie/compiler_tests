class Main inherits IO{
	main() : Object {
		(new A).foo()
	};
	foo() : Object {
		bar()
	};
	bar() : Object {
		out_string("hello")
	};
};

class A inherits Main {
	bar() : Object {
		out_string(" world!\n")
	};
};
