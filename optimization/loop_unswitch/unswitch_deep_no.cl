class Main inherits IO {
	main() : Object {
        let a : Int <- 0, b : Int in
            while a < 5 loop {
				a <- a + 1;
                let a : Int <- 2 in
                    if a < 2 then
                        a
                    else
                        b
                    fi;
            } pool
    };
};