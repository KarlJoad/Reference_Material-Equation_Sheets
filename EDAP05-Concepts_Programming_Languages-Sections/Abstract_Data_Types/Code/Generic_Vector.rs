trait Vector<T> {
	fn create() -> Self; // The Vector now ALWAYS starts out empty
	fn length(Self) -> i32;
	fn append(Self, T);  // No return value from an append operation
	fn get(Self, i32) -> T;
}
