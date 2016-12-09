(*makes sure while loops that have false in their condition
	do not create a body, and still return void *)
class Main inherits IO {
	o : Object <- while false loop 1 pool;
	main() : Object {{
		o.copy();	
	}};
};
