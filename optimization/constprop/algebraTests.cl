class Main inherits IO {
	x : Int <- 4;
	y : Int <- x;
	z : String <- "Hello";
	a : String <- z;
	b : Bool <- tRue;
	c : Bool <- not b;


    main() : SELF_TYPE {
		x <- 328;
		x * 0;
		0 * x;
		0 / x;
		1 * x;
		x * 1;
		x + 0;
		0 + x;
		x - 0;
		0 - x;		
		self;
    };
};
