class Main inherits IO {
    c : Int;

	main() : Object {
        let a : Int <- 0, b : Int <- 0 in {
            c <- 0;
            while c < 2 loop {
                b <- 0;
                while b < 2 loop
                    let g : Int <- 35 in {
                        out_string("a is: ");
                        out_int(a);
                        out_string("\n");
                        if a = 2 then
                            out_string("a is 2\n")
                        else
                            out_string("a not 2\n")
                        fi;
                        out_string("g is: ");
                        out_int(g);
                        out_string("\n");
                        b <- b + 1;
                    }
                pool;
                out_string("\n");
                c <- c + 1;
            } pool;
        }
    };
};