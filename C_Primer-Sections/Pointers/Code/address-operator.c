#include <stdio.h>

int main(void) {
	int x;
	int *xp;

	x = 15; /* Assign 15 to the location of x. */

	xp = &x; /* Get the address of x, and store in xp. */

	printf("x: %d\n", x);
	printf("*xp: %d\n", *xp);
	printf("xp: %p\n", xp);

	return 0;
}
