class Main inherits IO {
  main() : Object {   
	  {
		if 1 < 5 
	  	then out_string("1 < 5\n")
	  	else out_string("1 > 5\n")
	  	fi;

		if NOT false
		then out_string("Not: True\n")
		else out_string("Not: False\n")
		fi;

		if ISVOID 3 
		then out_string("Isvoid: True\n")
		else out_string("Isvoid: False\n")
		fi;
		
		if ~6 < 7 
		then out_string("Comp: True\n")
		else out_string("Comp: False\n")
		fi;

		if 8 = 8 
		then out_string("Eq: True\n")
		else out_string("Eq: False\n")
		fi;
	  }

  } ;

} ; 
