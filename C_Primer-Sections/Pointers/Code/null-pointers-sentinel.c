#define NULL 0

int main() {
	int i = 0;
	int *p = NULL;

	if (p) {
		/* Looks safe to dereference */
	}
	return 0;
}
