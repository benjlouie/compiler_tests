(**
*  Rock paper scissors where the computer only thows rock
*)

class Main inherits IO {
	x:Bool <- true;
	a:Int <- 1;
	b:Int;

	main() : Object{
		while x loop{
			out_string("What will you choose?\n");
			out_string("1 - Rock\n");
			out_string("2 - Scissor\n");
			out_string("3 - Paper\n");
			out_string("4 - Quit\n\n");
			out_string(">");
			b <- in_int();

			if b = 1 then
				out_string("\nIt was a tie! \n")
			else
				if b = 2 then
					out_string("\nYou Won! Against a robot who only throws rock...\n")
				else
					if b = 3 then
						out_string("\nYou Lost :C \n")
					else
						x <- false
					fi
				fi
			fi;

		}
		pool

	};
};