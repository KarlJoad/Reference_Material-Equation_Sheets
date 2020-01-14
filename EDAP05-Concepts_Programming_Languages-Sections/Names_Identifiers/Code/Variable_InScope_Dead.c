int main(void) {
	int *x;
	x = (int *) calloc(sizeof(int), 1);
	print(x);
	free(x);
	print(x);
}
