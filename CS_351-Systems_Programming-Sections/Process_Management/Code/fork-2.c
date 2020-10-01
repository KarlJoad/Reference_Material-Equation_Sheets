#include <unistd.h>
#include <stdio.h>

int main(void) {
	fork();
	fork();
	printf("Hello World!\n");
	return 0;
}
