(**
*  Counts up and down from 10 simultaneously
*)

class Main inherits IO {
	x:Bool <- true;
	a:Int <- 10;
	b:Int;
	c:Int;

	main() : Object{
		while 0 < a loop{
			out_int(a);
			out_string("\n");
			out_int(a + 1);
			out_string("\n");
			out_int(a - 1);
			out_string("\n");
			a<-(a-1);
			out_string("\n");
		}
		pool

	};
};