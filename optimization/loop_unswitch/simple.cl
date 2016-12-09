class Main inherits IO {
	main() : Object {
        let a : Int <- 0, b : Int in
            while a < 5 loop {
                if b = 0 then
                    out_string("b is zero\n")
                else {
                    out_string("b is ");
                    out_int(b);
                    out_string("\n");
                } fi;
                a <- a + 1;
            } pool
    };
};