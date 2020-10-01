#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/signal.h>

pid_t cpid;

void parent_handler(int sig) {
	printf("Relay to child");
	kill(-cpid, SIGINT);
}

void child_handler(int sig) {
	printf("Child Dying");
	exit(0);
}

int main() {
	if((cpid = fork()) == 0) {
		signal(SIGINT, child_handler);
		setpgrp(); /* Child becomes group leader. */
		while(1);
	}

	signal(SIGINT, parent_handler);
	while(1);
}
