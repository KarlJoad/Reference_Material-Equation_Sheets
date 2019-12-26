def id[T](x : T) : T = x
// id takes a parameter with a type parameter T and returns an value of the same type provided, T

/* In Scala, these parametric polymorphic functions are called with
 * functionName[ActualTypeParameter](ActualParameters)
 */
val three = id[Int](3); // The variable three has the Int value 3
val hello = id[Str]("Hello"); // The variable hello has the Str value "Hello"
