#include <stdio.h>

union random {
	int i;
	float f;
	char c;
}; /* Ending ';' is REQUIRED. */

int main(void) {
	union random test;

	test.i = 63;

	/* This is allowed, and the program will print the corresponding character. */
	printf("%c", test.c);

	return 0;
}
