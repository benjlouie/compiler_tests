(* This class tests nesting of constructs within other constructs
   e.g. a while loop nested within a for loop nested within a case *)
class D {
	x : Int <- 5;
	a : A <- new A;
	b : B;
	c : C;
	foo() : Object {
		case if isvoid while false loop "" pool then "3 constructs? not enough" else "we need to go deeper" fi of
			(* let's start off simple *)
			o : Object => {{{{(1+({{{5;{1;(true);(false);100;};};};2;}));};};};};
			i : Int => if if false then true else true fi then if true then 1 else 0 fi else if if true then false else true fi then 1 else 2 fi fi;
			s : String => not ~~~~~~~~~~~~~~~~~~~~~~~~~~~~1 = ~~~~~~~~~2;
			b : A => b <- ~b <- b <- b <- b <- 1 + b <- 1 + b <- b <- b <- b <- 1 + b <- b <- ~b <- b <- b <- b <- b <- 101;
			b : B => let a : Int <- let b : Int <- let c : Int <- let d : Int <- 1 in d in c in b in let e : Int <- a in let f : Int in 5;
			(* to understand recursion, you must first understand recursion *)
			c : C => 
			case if isvoid while false loop "" pool then "3 constructs? not enough" else "we need to go deeper" fi of
				(* let's start off simple *)
				o : Object => {{{{(1+({{{5;{1;(true);(false);100;};};};2;}));};};};};
				i : Int => if if false then true else true fi then if true then 1 else 0 fi else if if true then false else true fi then 1 else 2 fi fi;
				s : String => not ~~~~~~~~~~~~~~~~~~~~~~~~~~~~1 = ~~~~~~~~~2;
				b : A => b <- ~b <- b <- b <- b <- 1 + b <- 1 + b <- b <- b <- b <- 1 + b <- b <- ~b <- b <- b <- b <- b <- 101;
				b : B => let a : Int <- let b : Int <- let c : Int <- let d : Int <- 1 in d in c in b in let e : Int <- a in let f : Int in 5;
				(* to understand recursion, you must first understand recursion *)
				c : C => 
				case if isvoid while false loop "" pool then "3 constructs? not enough" else "we need to go deeper" fi of
					(* let's start off simple *)
					o : Object => {{{{(1+({{{5;{1;(true);(false);100;};};};2;}));};};};};
					i : Int => if if false then true else true fi then if true then 1 else 0 fi else if if true then false else true fi then 1 else 2 fi fi;
					s : String => not ~~~~~~~~~~~~~~~~~~~~~~~~~~~~1 = ~~~~~~~~~2;
					b : A => b <- ~b <- b <- b <- b <- 1 + b <- 1 + b <- b <- b <- b <- 1 + b <- b <- ~b <- b <- b <- b <- b <- 101;
					b : B => let a : Int <- let b : Int <- let c : Int <- let d : Int <- 1 in d in c in b in let e : Int <- a in let f : Int in 5;
					(* to understand recursion, you must first understand recursion *)
					c : C =>
					case if isvoid while false loop "" pool then "3 constructs? not enough" else "we need to go deeper" fi of
						(* let's start off simple *)
						o : Object => {{{{(1+({{{5;{1;(true);(false);100;};};};2;}));};};};};
						i : Int => if if false then true else true fi then if true then 1 else 0 fi else if if true then false else true fi then 1 else 2 fi fi;
						s : String => not ~~~~~~~~~~~~~~~~~~~~~~~~~~~~1 = ~~~~~~~~~2;
						b : A => b <- ~b <- b <- b <- b <- 1 + b <- 1 + b <- b <- b <- b <- 1 + b <- b <- ~b <- b <- b <- b <- b <- 101;
						b : B => let a : Int <- let b : Int <- let c : Int <- let d : Int <- 1 in d in c in b in let e : Int <- a in let f : Int in 5;
						(* Base case *)
						c : C => 1;
		esac;
		esac;
		esac;
		esac
	};
	
	x : Int <- 9;
};
