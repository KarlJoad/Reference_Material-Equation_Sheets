val emptyList : string list = []; (* emptyList : string list *)
val singletonList = ["1"]; (* val singletonList : string list*)
val multiList = ["1", "2", "3"]; (* val multiList : string list*)

(* checkList is a function with a pattern matching expression. *)
fun checkList toCheck = case toCheck of
                            [] => print "empty list\n"
                          | [a] => print ("list with one element: " ^ a ^ "\n")
         (* The a is matched and then a is bound with the value of the single element in the list *)
                          | _ => print "more than one element in list\n";
(* val checkList = fn : string list -> unit *)

checkList emptyList;
(* Prints "empty list\n"*)

checkList singletonList;
(* Prints "list with one element: 1\n *)

checkList multiList;
(* Prints "more than one element in list\n*)
