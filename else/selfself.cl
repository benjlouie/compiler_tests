(*
* Self type calling self.
* Static Dispatch does not like this
*)

class Main inherits IO{
	foo() : SELF_TYPE{
		self
	};

	main() : SELF_TYPE{
		self@SELF_TYPE.foo()
	};
};
