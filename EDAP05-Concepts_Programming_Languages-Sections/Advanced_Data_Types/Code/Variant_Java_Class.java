// Given a regular parametric polymorphic class C (This is also the bivariant case)
class C<T> {
    T get();
    void set(T v);
    boolean isSet();
}

// Here's what it would look like with covariance
class C<? extends T> {
    T get();
    void set(T v); // The set method would be disallowed
    boolean isSet();
}

// Here's what it would look like with contravariance
class C<? super T> {
    T get(); // The get method would be disallowed
    void set(T v);
    boolean isSet();
}

// Here's what it would look like with invariance
class C<?> {
    T get(); // The get method would be disallowed
    void set(T v); // The set method would be disallowed
    boolean isSet(); // Is still allowed because there is no reliance on T
}
