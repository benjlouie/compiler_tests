(*
	@file stack.cl
	@author Forest Thomas
	@class CSE 423
	@date Fall 2016
	@description simple program that acts like a stack.
		Integers can be pushed onto the stack to be stored
		can add two integers
		swap the position of the top two elements in the stack
		display contents of the stack
*)

(* this class was based off of the a2i.cl file in the example programs given to us *)
class A2I {
	c2i(char : String) : Int {
		if char = "0" then 0 else
		if char = "1" then 1 else
		if char = "2" then 2 else
		if char = "3" then 3 else
		if char = "4" then 4 else
		if char = "5" then 5 else
		if char = "6" then 6 else
		if char = "7" then 7 else
		if char = "8" then 8 else
		if char = "9" then 9 else
		{ abort(); 0; }
		fi fi fi fi fi fi fi fi fi fi
	};

	i2c(i : Int) : String {
		if i = 0 then "0" else
		if i = 1 then "1" else
		if i = 2 then "2" else
		if i = 3 then "3" else
		if i = 4 then "4" else
		if i = 5 then "5" else
		if i = 6 then "6" else
		if i = 7 then "7" else
		if i = 8 then "8" else
		if i = 9 then "9" else
		{ abort(); "";
		}
		fi fi fi fi fi fi fi fi fi fi
	};
		
	a2i(s : String) : Int {
		(let int : Int <- 0 in
		  {
			(let j : Int <- s.length() in
				(let i : Int <- 0 in
				  while i < j loop
				  {
					int <- int * 10 + c2i(s.substr(i,1));
					i <- i + 1;
				  }
				  pool
				)
			);
			int;
		  }
		)
	};

	i2a(i : Int) : String {
		if i = 0 then "" else
		(let next : Int <- i / 10 in
			i2a(next).concat(i2c(i-next*10))
		)
		fi
	};
};

(* node class for use with the stack *)
class Node {
	data : String;
	next : Node;
	empty : Bool <- true;
	get_next() : Node {next};
	set_next(n : Node) : Node {next <- n};
	get_data() : String {data};
	set_data(val : String) : String {
	{
		if empty then
			next <- new Node
		else 0 fi;
		empty <- false;
		data <- val;
	}
	};
	is_empty() : Bool {empty};
};

(*stack class that allows for push, pop, print and empty check operations *)
class Stack inherits IO {
	head : Node <- new Node;
	temp : Node;
	push(data : String) : String {
	{
		if head.is_empty() then
		{
			head <- new Node;
			head.set_data(data);
		}
		else
		{
			temp <- new Node;
			temp.set_data(data);
			temp.set_next(head);
			head <- temp;
		}
		fi;
		data;
	}
	};
	pop() : String {
	{
		temp <- head;
		head <- head.get_next();
		temp.get_data();
	}
	};

	is_empty() : Bool { head.is_empty() };

	print_stack() : Int {
	{
		let temp : Node <- head in 
		while not temp.is_empty() loop
		{
			out_string(temp.get_data());
			out_string("\n");
			temp <- temp.get_next();
		}
		pool;
		0;
	}
	};
};

class Main inherits IO {
	stk : Stack <- new Stack;
	conv : A2I <- new A2I;
	tmp1 : String;
	tmp2 : String;

	main() : SELF_TYPE {
		{
			let input: String <- "" in
			while not (input = "x") loop
			{
				out_string(">");
				input <- in_string();
				if input = "e" then
					if not stk.is_empty() then
					{
						tmp1 <- stk.pop();
						if tmp1 = "+" then {
							tmp1 <- stk.pop();
							tmp2 <- stk.pop();
							tmp1 <- conv.i2a(conv.a2i(tmp1) + conv.a2i(tmp2));
							stk.push(tmp1);
						} else if tmp1 = "s" then {
							tmp1 <- stk.pop();
							tmp2 <- stk.pop();
							stk.push(tmp1);
							stk.push(tmp2);
						} else
							stk.push(tmp1)
						fi fi;
					} else 0 fi
				else if input = "d" then
				{
					stk.print_stack();
				} else if input = "x" then
					""
				else
				{
					stk.push(input);
				}
				fi fi fi;
			}
			pool;
			out_string("");
		}
	};
};
