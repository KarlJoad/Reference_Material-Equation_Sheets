#include <stdlib.h>
#include <stdio.h>
#include <sys/wait.h>
#include <unistd.h>

void fork9() {
	if (fork() == 0) {
		printf("HC: hello from child\n");
	} else {
		printf("HP: hello form parent\n");
		wait(NULL);
		printf("CT: child has terminated\n");
	}
	printf("Child is dying. Bye\n");
}

int main() {
	fork9();
	return 0;
}
