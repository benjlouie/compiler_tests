class Main inherits IO {
	x : Int <- 4;
	y : Int <- x;
	z : String <- "Hello";
	a : String <- z;
	b : Bool <- tRue;
	c : Bool <- not b;


    main() : SELF_TYPE {
		Check when ints are at INT_MAX and INT_MIN;
        Check when we know a less than/LE is true/false.	
		self;
    };
};
