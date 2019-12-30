trait ReadBox[+T] { // covariant
  def get() : T
}

trait WriteBox[-T] { // contravariant
  def put(v : T)
}

trait Box[T] { // invariant
  def get() : T
  def put(v : T)
}
