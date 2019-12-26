public class C {
	// public static returnType methodName <formalTypeParameter> (formalParameters)
	public static T id <T> (T x) {
		return x;
	}

	int three = C.id<Integer>(3);
	String hello = C.id<String>("Hello");
}
