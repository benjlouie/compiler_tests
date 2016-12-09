(*copy's life, but only outputs hello world instead of life.cl's main *)
class Main inherits IO {
	main() : Object {
		out_string("hello world!\n")
	};
};

class Node {
	data : Int;
	next : Node;
	setData(i : Int) : Int {data <- i};
	getData() : Int {data};
	getNext() : Node {next};
	setNext(n : Node) : Node {next <- n};
};

class ArrayNode {
	data : Array;
	next : ArrayNode;
	setData(a : Array) : Array {data <- a};
	getData() : Array {data};
	getNext() : ArrayNode {next};
	setNext(n : ArrayNode) : Object {next <- n};
};

class TwoDArray inherits IO {
	head : ArrayNode;
	sizex : Int;
	sizey : Int;
	newArray(x : Int, y : Int) : TwoDArray {{
		if x < 0 then abort() else 1 fi;
		if y < 0 then abort() else 1 fi;
		sizex <- x;
		sizey <- y;
		head <- new ArrayNode;
		let an : ArrayNode <- head, tmp : Array <- new Array in {
			head.setData(tmp.newArray(y));
			while 0 < x loop {
				an.setNext(new ArrayNode);
				an <- an.getNext();
				an.setData(tmp.copy().newArray(y));
				x <- x - 1;
			} pool;
		};
		self;
	}};

	setInd(x : Int, y : Int, val : Int) : Object {{
		if x < 0 then abort() else 1 fi;
		if y < 0 then abort() else 1 fi;
		if sizex < x then abort() else 1 fi;
		if sizey < y then abort() else 1 fi;
		let tmp : ArrayNode <- head in {
		while 0 < x loop {
			tmp <- tmp.getNext();
			x <- x - 1;
		} pool;
		tmp.getData().setInd(y, val);
		};
	}};

	getInd(x : Int, y : Int) : Int {
		let tmp : ArrayNode <- head in {
		while 0 < x loop {
			tmp <- tmp.getNext();
			x <- x - 1;
		} pool;
		tmp.getData().getInd(y);
	}};

	printArray() : Object {{
		let i : Int <- 0, tmp : ArrayNode <- head in
		while i < sizex loop {
			tmp.getData().printArray();
			out_string("\n");
			tmp <- tmp.getNext();
			i <- i + 1;
		} pool
		;

	}};
};
class Array inherits IO {
	head : Node;
	size : Int;
	newArray(i : Int) : Array {{
		if i < 0 then
			abort() else 1 fi;
		size <- i;
		head <- new Node;
		let tmp : Node <- head in
		while 1 < i loop {
			tmp.setNext(new Node);
			tmp <- tmp.getNext();
			i <- i - 1;
		} pool;
		self;
	}};

	setInd(i : Int, val : Int) : Object {{
		if (i < 0) then
			abort()
		else if (size < i) then
			abort()
		else 1 fi fi;
		let tmp : Node <- head in {
		while 0 < i loop {
			tmp <- tmp.getNext();
			i <- i - 1;
		} pool;
		tmp.setData(val);
		};
	}};

	printArray() : Object {{
		let i : Int <- 0, tmp : Node <- head in
		while i < size loop {
			if i = size - 1 then
				out_int(tmp.getData())
			else {
				out_int(tmp.getData());
				out_string(", ");
			} fi;
			tmp <- tmp.getNext();
			i <- i + 1;
		} pool
		;
	}};

	getInd(i : Int) : Int {
		let tmp : Node <- head in {
			while 0 < i loop {
				tmp <- tmp.getNext();
				i <- i - 1;
			} pool;
			tmp.getData();
		}
	};
};

class Life inherits IO {
	main : TwoDArray;
	swap : TwoDArray;
	size : Int;

	(* changes the board based on what
	   type of object was passed in *)
	initBoard(type : Object, s : Int) : Life {{
		size <- s;
		main <- new TwoDArray;
		main <- main.newArray(size, size);
		swap <- new TwoDArray;
		swap <- swap.newArray(size, size);
		case type of 
			i : Int => { --glider
				main.setInd(2, 3, 1);
				main.setInd(4, 2, 1);
				main.setInd(4, 3, 1);
				main.setInd(4, 4, 1);
				main.setInd(3, 4, 1);
			};
			o : Object => {
				main.setInd(1, 1, 1);
				main.setInd(1, 2, 1);
				main.setInd(2, 1, 1);
				main.setInd(2, 2, 1);
				main.setInd(3, 3, 1);
				main.setInd(3, 4, 1);
				main.setInd(4, 3, 1);
				main.setInd(4, 4, 1);
			};
		esac;
		self;
	}};

	printBoard() : Object {
		main.printArray()
	};

	stepLife() : Object {
		let x : Int <- 1, y : Int <- 1 in {
			while x < size - 1 loop {
				y <- 1;
				while y < size - 1 loop {
				let count : Int <- 0 in {
					if main.getInd(x - 1, y - 1) = 1 then count <- count + 1 else 1 fi;
					if main.getInd(x, y - 1) = 1 then count <- count + 1 else 1 fi;
					if main.getInd(x + 1, y - 1) = 1 then count <- count + 1 else 1 fi;
					if main.getInd(x - 1, y) = 1 then count <- count + 1 else 1 fi;
					if main.getInd(x + 1, y) = 1 then count <- count + 1 else 1 fi;
					if main.getInd(x - 1, y + 1) = 1 then count <- count + 1 else 1 fi;
					if main.getInd(x, y + 1) = 1 then count <- count + 1 else 1 fi;
					if main.getInd(x + 1, y + 1) = 1 then count <- count + 1 else 1 fi;
					if count < 2 then swap.setInd(x, y, 0) else
						if 3 < count then swap.setInd(x, y, 0) else
							if main.getInd(x, y) = 1 then {
								if count = 2 then swap.setInd(x, y, 1) else 1 fi;
								if count = 3 then swap.setInd(x, y, 1) else 1 fi;
							} else
								if count = 3 then swap.setInd(x, y, 1) else swap.setInd(x, y, 0) fi
							fi
						fi
					fi;
				};
				y <- y + 1;
				} pool;
				x <- x + 1;
			} pool;
			let tmp : TwoDArray in {
				tmp <- main;
				main <- swap;
				swap <- tmp;
			};
		}
	};
};
