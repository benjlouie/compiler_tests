(**
*  Input a number, recieve cats
*)

class Main inherits IO {
	x:Bool <- true;
	a:Int;
	b:Int;
	u:String;
	main() : Object{
		while x loop{
			out_string("How many cats do you want?\n");
			out_string(">");
			a <- in_int();
			out_string("\n");
			
			while 0 < a loop{
				out_string("Cat\n");
				a<-(a-1);
			}pool;
			
			out_string("\n");
			out_string("Do you want more cats? (n will exit)\n");
			out_string(">");
			u <- in_string();
			if u = "n" then
				x <- false
			else
				x <- true
			fi;
		}
		pool

	};
};