class Main inherits IO {
	x : Int <- 4;
	y : Int <- x;
	z : String <- "Hello";
	a : String <- z;
	b : Bool <- tRue;
	c : Bool <- not b;


    main() : SELF_TYPE {
		let x: Int <- 37 in x <- x + y;
		let y: Int <- 422 in x <- y * x * 2;
		self;
    };
};
