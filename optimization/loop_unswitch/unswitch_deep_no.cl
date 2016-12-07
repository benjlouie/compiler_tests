class Main inherits IO {
	main() : Object {
        let a : Int <- 0, b : Int in
            while a < 5 loop
                let a : Int <- 2 in
                    if a < 2 then
                        a
                    else
                        b
                    fi
            pool
    };
};