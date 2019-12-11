fun map (NIL, f) = NIL
  | map (CONS(i, tail), f) = CONS(f(i), map(tail, f));
(* The type specification of map is => fn : 'a lst * ('a -> 'b) -> 'b lst *)
