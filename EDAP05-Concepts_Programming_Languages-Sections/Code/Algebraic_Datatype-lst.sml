datatype 'a lst = NIL
                | CONS of 'a * 'a lst;

fun len (NIL) = 0
  | len (CONS(e, tail)) = 1 + len(tail);

fun tostr (NIL) = NIL
  | tostr (CONS (i, tail)) = CONS(Int.toString i, tostr(tail));

fun inclist (NIL) = NIL
  | inclist (CONS (i, tail)) = CONS(i+1, inclist(tail));

fun genlst (0, _) = NIL
  | genlst (k, init) = CONS(init, genlist (k-1, init));
