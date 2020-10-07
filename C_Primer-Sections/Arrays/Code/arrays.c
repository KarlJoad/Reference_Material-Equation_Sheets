int main(void) {
	int i_arr[10]; /* Array of 10 ints, 40 bytes */
	char c_arr[80]; /* Array of 80 characters, 80 bytes */
	char td_arr[24][80]; /* 2-D Array, 24 x 80 x 1 bytes*/
	int *ip_arr[10]; /* Array of 10 pointers which point to ints, 40 or 80 bytes */

	/* Dimension inferred if initialized when declaring. */
	short grades[] = { 75, 90, 85, 100 };

	/* Can omit the first dimension, as partial initialization is allowed. */
	int sparse[][10] = { { 5, 3, 2},
			     { 8, 10 },
			     { 2 } };

	/* If partially initialized, remaining components are 0 */
	int zeros[1000] = { 0 }; /* Initialize all values to 0 */

	/* Can also use designated initializers for specific indices */
	int nifty[100] = { [0] = 0, /* Element zero has value 0*/
			   [99] = 1000, /* Element 99 has value 1000 */
			   [49] = 250 };

	return 0;
}
