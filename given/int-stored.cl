class Main inherits IO {
	a:Int <- 10;
	b:Int <- 20;
  main() : Object {   
	{
		if a < b * 2
		then out_int(b + a)
		else out_int(b - a)
		fi;

		if a + 1 = b + 2 
		then out_int(b * a)
		else out_int(b / a)
		fi;
	}
  } ;
} ; 
