#include <stdio.h>

int main(void) {
	int *ip;

	/* Don't assign anything to ip, which means it holds garbage. */
	printf("%d\n", *ip);

	return 0;
}
