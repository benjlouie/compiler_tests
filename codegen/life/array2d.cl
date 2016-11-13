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
};

class Main inherits IO {
	a : TwoDArray <- new TwoDArray;
	main() : Object {{
		let i : Int <- 0, max : Int <- 75 in {
		a <- a.newArray(max, max);
		while i < max loop {
			a.setInd(i, i, i);
			i <- i + 1;
		} pool;
		a.printArray();
		};
	}};
};
