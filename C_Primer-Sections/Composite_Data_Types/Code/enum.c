enum stoplight_t {
	RED,
	YELLOW,
	GREEN
}; /* Ending ; IS mandatory. */

int main(void) {
	enum stoplight_t state_31;

	/* This is valid code. */
	state_31 = GREEN;

	return 0;
}
