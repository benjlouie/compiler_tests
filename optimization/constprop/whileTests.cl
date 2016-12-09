class Main inherits IO {
	x : Int <- 4;
	y : Int <- x;
	z : String <- "Hello";
	a : String <- z;
	b : Bool <- tRue;
	c : Bool <- not b;


    main() : SELF_TYPE {
		while (5 < x) loop  y <- y + 1  pool;
		while (x < 5) loop x <- x + 1 pool;
		while (5 < x) loop x <- x - 1 pool; 
		self;
    };
};
