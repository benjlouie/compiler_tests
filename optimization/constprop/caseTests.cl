class Main inherits IO {
	x : Int;
	y : String;
	z : Object <- x;

    main() : SELF_TYPE {{
		x <- 32;
		case (z) of 
			a : Int => x;
			b : String => x;
		esac;
		x <- 42;
		case (y) of 
			a : Int => x;
			b : String => x <- 24;
		esac;
		x;
		self;
    }};
};
