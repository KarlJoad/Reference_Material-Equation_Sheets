#include <unistd.h>
#include <stdio.h>

void fork0() {
	int pid = fork();
	if (pid == 0) {
		printf("Hello from child\n");
	} else {
		printf("Hello from parent\n");
	}

	return;
}

int main(void) {
	fork0();
	return 0;
}
