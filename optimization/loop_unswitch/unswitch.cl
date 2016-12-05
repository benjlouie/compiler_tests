class Main inherits IO {
	a : Int;
    b : Int;
	main() : Object {{
        a <- 5;
        b <- 7;
        while b < 6 loop {
            if a < 6 then
                a
            else
                b
            fi;
            if b < 6 then
                b
            else
                b.type_name()
            fi;
        } pool;
    }};
};
class A {
    aa : Int;
    bar() : Int {
        aa
    };
};