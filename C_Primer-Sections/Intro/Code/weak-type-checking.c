#include <stdio.h>

int main(void) {
/* Types are implicitly converted */
	char c = 0x41424344;
	int i = 1.5;
	unsigned int u = -1;
	float f = 10;
	double d = 2.5F; // Note: 'F' suffix for floating point literals

	printf("c = '%c', i = %d, u = %u, f = %f, d = %f\n", c, i, u, f, d);

/* Typecasts can be used to force conversions */
	int r1 = f/d;
	int r2 = f / (int) d;

	printf("r1 = %d, r2 = %d\n", r1, r2);
	return 0;
}
