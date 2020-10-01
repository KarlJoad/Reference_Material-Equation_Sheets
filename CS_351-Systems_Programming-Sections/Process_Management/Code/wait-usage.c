#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>

int main() {
	pid_t cpid;
	if (fork() == 0) {
		exit(0); /* Child -> Zombie */
	}
	else {
		cpid = wait(NULL); /* Reaping Parent */
	}

	printf("Parent pid = %d\n", getpid());
	printf("Child pid  = %d\n", cpid);
	while(1);
}
