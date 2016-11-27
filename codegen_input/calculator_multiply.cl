(**
*  Program multiplies two input numbers
*)

class Main inherits IO {
	x:Bool <- true;
	a:Int;
	b:Int;
	u:String;
	main() : Object{
		while x loop{
			out_string("First number: ");
			a <- in_int();
			out_string("Second number: ");
			b <- in_int();
			out_int(a * b);
			out_string("\n");
			
			out_string("Do you want to continue? (n will exit)\n");
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