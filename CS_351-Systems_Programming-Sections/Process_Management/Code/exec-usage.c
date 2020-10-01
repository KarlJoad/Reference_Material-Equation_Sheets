#include <unistd.h>
#include <stdio.h>

int main() {
	execl("/bin/echo", "/bin/echo",
	      "hello", "world", (void *)0);
	/* Everything below the execl becomes unreachable code, as the new
	 * program REPLACES the original binary. */
	printf("Done exec-ing...\n");
	return 0;
}
