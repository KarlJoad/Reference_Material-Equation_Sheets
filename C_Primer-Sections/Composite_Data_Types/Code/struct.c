/* Type Definition */
struct point {
	int x;
	int y;
}; /* Ending ';' is REQUIRED. */

/* point declaration and allocation. */
struct point pt;

/* Pointer to a point struct */
struct point *pp1;

int main(void) {
	pt.x = 10;
	pt.y = -5;

	struct point pt2 = {.x = 8, .y = 13 }; /* Declaration and Initialization. */

	struct point *pp;
	pp = &pt;

	/* To access a field in pp, the 2 syntaxes are equivalent. */
	(*pp).x;
	pp->x;

	return 0;
}
