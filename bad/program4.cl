(*This file tests catching unrecoverable errors within the file *)
cass A inherits IO { --typo for class
	x : Int;
	y : Int;
	z : Int;
	foo() : Object {
		1
	};
	bar(a : Int) : Object {
		1
	};
	baz(a : Int, b : Int, c : Int) : Object {
		1
	};
};

class Main inherits IO {
	main() : SELF_TYPE {
		out_string("Hello world!\n")
	};
};
