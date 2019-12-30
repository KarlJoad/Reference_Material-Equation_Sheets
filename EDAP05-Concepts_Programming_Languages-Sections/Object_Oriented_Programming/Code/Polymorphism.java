public class A {
    public draw() { ... }
}
public class B extends A {
    @Override
    public draw() { ... }
}
public static void main(String[] args) {
    A myA = new A();
    B myB = new B();
    myA.draw(); // Draws the thing defined by instructions in class A's draw() method
    myB.draw(); // Draws the thing defined by instructions in class B's draw() method
    // We need to determine if we should call B's draw() or A's draw in this case
