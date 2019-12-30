Box<? extends A> covariantBox = new Box<B>();
Box<? super B> contravariantBox = new Box<A>();
Box<?> bivariantBox = new Box<A>();
Box<A> invariantBox = new Box<A>();
