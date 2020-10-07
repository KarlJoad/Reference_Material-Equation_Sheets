void swap(int x, int y);
void p_swap(int *p, int *q);

int main() {
	int a = 5, b = 10;
	swap(a, b);
	/* want a == 10, b == 5
	 * swap() doesn't do that though. */
	p_swap(&a, &b);
	/* Pass memory addresses into p_swap, allowing for direct access.*/
	return 0;
}

/* This uses call-by-value and does the swap in function-local variables.
 * This means that the original a and b would NOT be changed. */
void swap(int x, int y) {
	int tmp = x;
	x = y;
	y = tmp;
	return;
}

/* This uses call-by-reference and does the swap on the original memory locations.
 * This means that the original a and b WOULD be changed. */
void p_swap(int *p, int *q) {
	int tmp = *p;
	*p = *q;
	*q = tmp;
	return;
}
