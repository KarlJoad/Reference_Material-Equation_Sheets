def invariantBox(box : Box[B], b : B) {
  val v : B = box.get()
  box.put(b)
}
