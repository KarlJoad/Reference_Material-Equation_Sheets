/* This struct has no bearing on how the declaration of a pointer works.
 * I just wanted to give a thorough example of how pointer declaration works. */
struct student {
	char *name;
	float grade;
	char letter_grade;
};

int main(int argc, char *argv[])
{
	/* type *var_name; */
	int *ip;
	char *cp;
	struct student *sp;
	return 0;
}
