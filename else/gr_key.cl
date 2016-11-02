(* messing around with keywords and a case statement *)

class Main inherits IO {
  fals : Int <- 0;
  val : Bool <- fALSE;

  main() : Object {
    {
      while fals < 2 loop
        {
          out_string("fals = ");
          out_int(fals);
          out_string("\n\tbut is fALSE true?   ");
	  case val = true of
            x : Bool => val <- x;
            y : Int => out_string("Wait...what happened?\n\n");
          esac;
          fals <- fals + 1;

          if val = true then
            out_string("apparently\n\n")
          else
            out_string("nope\n\n")
          fi;
        }
      pool;
    }
  };

};
