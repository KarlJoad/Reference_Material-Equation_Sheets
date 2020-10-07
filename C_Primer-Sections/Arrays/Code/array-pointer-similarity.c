#include <stdio.h>

int main(void) {
	int x[] = { 1, 2, 3, 4, 5 };

	printf("3rd element in x, using array syntax: %d\n", x[2]);
	/* Because x is an int, the +2 actually performs the + (2 * sizeof(int)) operation. */
	printf("3rd element in x, using pointer syntax: %d\n", *(x + 2));

	return 0;
}
