class Main inherits IO {
	fact(n : Int) : Int {
		if n < 1 then
			1
		else
			n * fact(n-1)
		fi
	};
	main() : Object {
		out_int(fact(in_int()))
	};
};
