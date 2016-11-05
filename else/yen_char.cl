(*
* Simple If then output statement for yen symbol. Just gotta make sure
*)
class Main inherits IO{
	y : String <- "¥";
	main(): SELF_TYPE{
		if (y = "¥") then
			out_string("All yo yens!\n")
		else
			out_string("Not enough cash\n")
		fi
	};
};
