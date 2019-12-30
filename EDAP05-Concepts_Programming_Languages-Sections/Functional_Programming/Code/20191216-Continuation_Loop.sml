open SMLofNJ.Cont;

datatype looper =  INIT of looper cont
		 | LOOP of (string list * looper cont)

fun loop (input_list : string list) =
    let
	val (h::list, cont) = case callcc (fn c => INIT c) of
				  INIT c         => (input_list, c)
				| LOOP (rest, c) => (rest, c)
	val _ = print "  ---\n"
	val (h::list, cont') = case callcc (fn c => INIT c) of
				   INIT c         => (h::list, c)
			     | LOOP (rest, c) => (rest, c)
	val _ = print h
	val _ = print "\n"
    in case list of
	     []  => (print "Done\n")
                    (* bug was in the line below: " throw cont " instead of " throw cont' " *)
	  |  [_] => throw cont' (LOOP (list, cont'))
	|  _     => throw cont (LOOP (list, cont))
    end
