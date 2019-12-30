(* cardinal directions *)
datatype dir = N
	     | S
	     | E
	     | W

(* dir to string: *)
fun showDir N = "north"
  | showDir W = "west"
  | showDir S = "south"
  | showDir E = "east"

(* invert direction: *)
fun flipDir N = S
  | flipDir S = N
  | flipDir E = W
  | flipDir W = E


(* the datatype below is predefined in SML: *)
datatype 'a option = NONE
		   | SOME of 'a

fun isSome (NONE)   = false
  | isSome (SOME _) = true



(* recursive list definition with type parameter *)
datatype 'a lst = NIL
		| CONS of 'a * 'a lst

(* list length *)
fun len NIL            = 0
  | len (CONS (_, tl)) = 1 + len (tl)

(* `map' function for our map -- not curried *)
fun lstMap (NIL, f)          = NIL
  | lstMap (CONS (v, tl), f) = CONS (f v, lstMap (tl, f))


(* curried version: *)
fun lstMap2 f NIL            = NIL
  | lstMap2 f (CONS (v, tl)) = CONS (f v, lstMap2 f tl)

(* alternative but fully equivalent definition: *)
fun lstMap3 f =
    let fun m NIL            = NIL
	  | m (CONS (v, tl)) = CONS (f v, m tl)
    in m
    end
