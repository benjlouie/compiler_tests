(**
*  Program loops 20 times and prints Hello on a new line
*)

class Main inherits IO {
	x:Int <- 20;
	
	main() : Object{
		while 0 < x loop{
			out_string("hello\n");
			x<-(x-1);
		}
		pool

	};
};
