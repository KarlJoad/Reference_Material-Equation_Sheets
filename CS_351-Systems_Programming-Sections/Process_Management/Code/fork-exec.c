#include <unistd.h>
#include <sys/wait.h>
#include <stdio.h>
#include <stdlib.h>

int main() {
	if (fork() == 0) {
		execl("/bin/ls", "/bin/ls", "-l", (void *)0);
		exit(0);
	}
	wait(NULL);
	printf("Command Completed\n");
	return 0;
}
