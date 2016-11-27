(**
*  Guessing game
*)

class Main inherits IO {
	x:Bool <- true;
	a:Int;
	b:Int <- 24;
	u:String;
	main() : Object{
		while x loop{
			out_string("Your guess: ");
			a <- in_int();
			out_string("\n");
			
			if a < b then
				out_string("Too Low\n")

			else
				if b < a then
					out_string("Too High\n")
				else
					x <- false
				fi
			fi;


		}
		pool

	};
};