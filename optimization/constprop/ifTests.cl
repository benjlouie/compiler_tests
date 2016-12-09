class Main inherits IO {
	x : Int <- 4;
	y : Int <- x;
	z : String <- "Hello";
	a : String <- z;
	b : Bool <- tRue;
	c : Bool <- not b;


    main() : SELF_TYPE {
		if(x < 6) then x+y else y fi;
		if(not y <= 0) then y else x + y fi;
		if(z.length() < y) then x + y else x <- 345 fi;		
		self;
    };
};
