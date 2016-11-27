(**
*  Cat Generator loops 40 times
*)

class Main inherits IO {
	x:Int <- 40;
	
	main() : Object{
		while 0 < x loop{
			out_string("Cat\n");
			x<-(x-1);
		}
		pool

	};
};
