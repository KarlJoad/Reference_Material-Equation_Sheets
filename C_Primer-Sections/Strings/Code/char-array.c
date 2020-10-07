#include <stdio.h>

int main() {
	char *str = "hello world!"; /* 12 characters + 1 null character. */
	str[12] = 10; /* Set the null terminator to 10. */
	printf("%s", str);
	return 0;
}
