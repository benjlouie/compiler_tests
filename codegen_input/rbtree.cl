class TreeNode inherits IO {
	data : Int <- 0;
	lchild : TreeNode;
	rchild : TreeNode;
	setData(n : Int) : Object {data <- n};
	getData() : Int {data};
	setL(n : TreeNode) : Object {lchild <- n};
	setR(n : TreeNode) : Object {rchild <- n};
	getL() : TreeNode {lchild};
	getR() : TreeNode {rchild};
	print() : Object {{
		out_int(data);
		out_string("\n");
	}};
	inOrderPrint() : Object {{
		if not isVoid lchild then
			getL().inOrderPrint() else 1 fi;
		print();
		if not isVoid rchild then
			getR().inOrderPrint() else 1 fi;
	}};
	postOrderPrint() : Object {{
		if not isVoid lchild then
			getL().inOrderPrint() else 1 fi;
		if not isVoid rchild then
			getR().inOrderPrint() else 1 fi;
		print();
	}};
	preOrderPrint() : Object {{
		print();
		if not isVoid lchild then
			getL().inOrderPrint() else 1 fi;
		if not isVoid rchild then
			getR().inOrderPrint() else 1 fi;
	}};
	predecessor() : TreeNode {{
		if isvoid lchild then
			lchild
		else
			let tmp : TreeNode <- lchild in {
				while not isvoid tmp.getR() loop
					tmp <- tmp.getR()
				pool;
				tmp;
			}
		fi;
	}};
};

class BST {
	root : TreeNode;
	printPre() : Object {root.preOrderPrint()};
	printIn() : Object {root.inOrderPrint()};
	printPost() : Object {root.postOrderPrint()};
	insert(n : Int) : Object {
		root <- insertNode(n, root)
	};
	insertNode(n : Int, r : TreeNode) : TreeNode {{
		if isvoid r then {
			r <- new TreeNode;
			r.setData(n);
		} else if r.getData() < n then
			r.setR(insertNode(n, r.getR()))
		else 
			r.setL(insertNode(n, r.getL()))
		fi fi;
		r;
	}};
	delete(n : Int) : Object {
		root <- deleteNode(n, root)
	};
	deleteNode(n : Int, r : TreeNode) : TreeNode {{
		if not isvoid r then
			if r.getData() = n then
				r <- r.predecessor()
			else if r.getData() < n then
				deleteNode(n, r.getR())
			else 
				deleteNode(n, r.getL())
			fi fi
		else 1 fi;
		r;
	}};
};

class Main inherits IO {
	tmp : Int;
	choice : Int;
	bst : BST <- new BST;
	main() : Object {{
		printPrompt();
		choice <- in_int();
		while not choice = 4 loop {
			if choice = 1 then {
				out_string("enter a number: \n");
				bst.insert(in_int());
			} else if choice = 2 then {
				out_string("no.\n");
				--bst.delete(in_int());
			} else if choice = 3 then {
				printOrderPrompt();
				choice <- in_int();
				if choice = 1 then
					bst.printPre()
				else if choice = 2 then
					bst.printIn()
				else if choice = 3 then
					bst.printPost()
				else 1 fi fi fi;
			} else 1 fi fi fi;
			printPrompt();
			choice <- in_int();
		} pool;
	}};
	printPrompt() : Object {{
		out_string("Select an option:\n");
		out_string("1: insert a number into BST\n");
		out_string("2: delete a number from BST\n");
		out_string("3: print BST\n");
		out_string("4: exit\n");
	}};
	printOrderPrompt() : Object {{
		out_string("select:\n");
		out_string("1: pre order traversal\n");
		out_string("2: in order traversal\n");
		out_string("3: post order traversal\n");
	}};
};
