trait IntVector {
	fn create(i32) -> Self;
	fn length(Self) -> i32;
	fn append(Self, i32);  // No return value from an append operation
	fn get(Self, i32) -> i32;
}
