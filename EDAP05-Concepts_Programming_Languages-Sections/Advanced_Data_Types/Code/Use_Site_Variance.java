Box<? extends A> covariantBox = new Box<B>();
Box<? super B> contravariantBox = new Box<A>();
Box<?> bivariantBox = new Box<A>();
Box<A> invariantBox = new Box<A>();

class B extends A {}
class C extends B {}

// Use the covariance to read from a subtyped box.
public static void read(ReadBox<? extends B> rb) {
    B b = rb.get();
}
read(new ReadBox<C>);

// Use the contravariance to read from a supertyped box
public static void write(WriteBox<? super B> wb) {
    wb.put(new B());
}
write(new WriteBox<A>);
