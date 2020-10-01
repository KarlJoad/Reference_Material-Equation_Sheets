#include <unistd.h>
#include <sys/wait.h>

int main() {
	int stat; /* stat is for the status of the child. */
	pid_t pid;
	if ((pid = fork()) == 0)
		while(1); /* Child goes into infinite while-loop. */
	else {
		kill(pid, SIGINT); /* Parent INTERRUPTs child with SIGINT*/
		wait(&stat);
		/* Signal handler in the parent to handle how a child handled a signal. */
		if (WIFSIGNALED(stat))
			psignal(WTERMSIG(stat), "Child term due to:");
	}

	return 0;
}
