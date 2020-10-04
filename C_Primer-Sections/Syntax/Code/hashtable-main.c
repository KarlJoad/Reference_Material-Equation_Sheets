#include "hashtable.h"

int main(int argc, char *argv[]) {
	hashtable_t *ht;
	ht = make_hashtable(atoi(argv[1]));
	return 0;
}
