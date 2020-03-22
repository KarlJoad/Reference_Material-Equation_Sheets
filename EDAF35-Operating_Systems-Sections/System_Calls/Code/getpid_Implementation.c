SYSCALL_DEFINE0(getpid) {
	return task_tgid_vnr(current); // returns current->tgid
}
