trait Vector<T> where T : std::cmp::PartialOrd {
	fn create() -> Self; // The Vector now ALWAYS starts out empty
	fn push(Self, T); // No return type
	fn getTop(Self) -> T;
}
