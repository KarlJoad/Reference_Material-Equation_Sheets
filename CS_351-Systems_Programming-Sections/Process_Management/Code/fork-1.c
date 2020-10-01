#include <unistd.h>
#include <stdio.h>

int main(void) {
	fork();
	printf("Hello World!\n");
	return 0;
}
