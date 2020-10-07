#include <stdio.h>
#include <stdlib.h>

int main(void) {
	int *ip;
	char *cp;
	float *fp;

	ip = malloc(1); /* Allocates one byte. */

	*ip = 63; /* Store the integer 63 in the memory location that `ip' points to. */

	/* Let cp and fp point to the same memory location as ip. */
	cp = (char*) ip;
	fp = (float*) ip;

	/* Print the value that all 3 pointers point to in memory. */
	printf("ip: %d\n", *ip);
	printf("cp: %c\n", *cp);
	printf("fp: %f\n", *fp);

	return 0;
}
