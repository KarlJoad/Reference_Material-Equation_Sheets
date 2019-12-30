class C {
    A g (B b) { ... } // type B -> A
}

class D extends C {
    @Override
    B g (A a) { ... } // type A -> B
}
