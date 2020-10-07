#include <stdlib.h>
#include <signal.h>

int main(void) {
	sigset_t mask;
	sigemptyset(&mask);
	sigaddset(&mask, SIGINT);
	sigaddset(&mask, SIGALRM);

/* Block the set of signals specified in `mask'
 * Do not collect the previous set of blocked signal by passing `NULL'*/
	sigprocmask(SIG_BLOCK, &mask, NULL);

	return 0;
}
