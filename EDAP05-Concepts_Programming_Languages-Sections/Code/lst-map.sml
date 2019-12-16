fun map (NIL, f) = NIL
  | map (CONS(i, tail), f) = CONS(f(i), map(tail, f));
(* The type specification of map is => fn : 'a lst * ('a -> 'b) -> 'b lst *)
(* NOTE that this map is different than the one built into SML *)
(* The type specification of the built-in map is => ('a -> 'b) -> 'a list -> 'b list *)
