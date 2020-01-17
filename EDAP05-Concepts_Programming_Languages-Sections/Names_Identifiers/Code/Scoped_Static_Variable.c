int f(int x) { // Parameter is locally scoped and stack-dynamic
	int y; // Locally scoped variable, stack-dynamic
	int* a = // The pointer, *a, is a locally scoped variable and is stack-dynamic
		malloc(sizeof(int)); // The anonymous heap variable is locally scoped and heap-dynamic
	static int c; // This is a locally-scoped variable allocated in static memory
	return 0;
}
int x; // Global-scope variable, allocated in static memory
