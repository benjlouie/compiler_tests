(**
*  Program prints the multiples of 3
*)

class Main inherits IO {
	x:Int <- 20;
	
	main() : Object{
		while 0 < x loop{
			out_int(3 * x);
			out_string("\n");
			x<-(x-1);
		}
		pool

	};
};
