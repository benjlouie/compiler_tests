class Main inherits IO {
	
	main() : Object {{
		let s : String <- "start\n" in
		{
			let i : Int <- 10 in
				while 0 < i loop {
					s <- s.concat("line\n");
					i <- i - 1;
				} pool;
			out_string(s);
		};
	}};
};