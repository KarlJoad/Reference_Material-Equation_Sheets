class ReadBox[+T] (v : T) { // covariant
  def get() : T = v;
}

class WriteBox[-T] { // contravariant
  def put(v : T) = {};
}

class Box[T] (v : T) { // invariant
  def get() : T = v;
  def put(v : T) = {};
}

class B extends A; // B <: A
class C extends B; // C <: B <: A -> C <: A

// Use the covariance to read from a subtyped box.
def read(rb : ReadBox[B]) {
  val b : B = rb.get;
}
read(new ReadBox(new C()));

// Use the contravariance to read from a supertyped box
def write(wb : WriteBox[B]) {
  wb.put(new B());
}
write(new WriteBox[A]);
