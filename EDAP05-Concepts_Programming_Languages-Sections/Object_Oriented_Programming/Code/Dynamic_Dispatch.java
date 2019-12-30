class E {
    int f (B b) { ... }
    int f (A a) { ... }
    int g (A a) { ... }
}

class F extends E {
    @Override
    int g (A a) { ... }
}

public class C {
    public static void main(String[] args) {
        A aa = new A() ; // static type : A, dynamic type : A
        A ab = new B() ; // static type : A, dynamic type : B
        E ee = new E() ; // static type : E, dynamic type : E
        E ef = new F() ; // static type : E, dynamic type : F
        ee.f(aa); // => E.f(A)
        ee.f(ab); // => E.f(A)
        ee.g(aa); // => E.g(A)
        ef.g(aa); // => F.g(A)
    }
}
