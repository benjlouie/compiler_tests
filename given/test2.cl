class Main inherits IO {
    main() : SELF_TYPE {
		new Complex;
    };
};

class Complex inherits IO {
    x : Int;
    y : Int;

    init(a : Int, b : Int) : Complex {
	{
	    x <- a;
	    y <- b;
	    self;
	}
    };

};

class MyStuff inherits Complex {
	x : String;
};
