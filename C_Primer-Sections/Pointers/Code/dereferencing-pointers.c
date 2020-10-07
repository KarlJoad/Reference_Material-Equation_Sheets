#include <stdio.h>

int main(void) {
	int i, j, *p, *q;

	i = 10;       /* i is defined to have the value 10 */
	p = &j;       /* j is uninitialized still, put j's address in p */
	q = p;        /* Set the pointer q to the address in p, which is j's address */
	*q = i;      /* Store i in the location q POINTS to, which is j right now */
	*p = *q * 2; /* Multply the value q POINTS to by 2 and store in the location POINTED to by p */
	printf("i=%d, j=%d, *p=%d, *q=%d\n", i, j, *p, *q);
	return 0;
}
