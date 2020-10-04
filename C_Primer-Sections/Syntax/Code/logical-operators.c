#include <stdio.h>

int main(void) {
	printf("%d\n", !(0));         // 1
	printf("%d\n", 0 || 2);       // 1
	printf("%d\n", 3 && 0 && 6);  // 0
	printf("%d\n", !(1234));      // 0
	printf("%d\n", !!(-1020));    // 1

	return 0;
}
