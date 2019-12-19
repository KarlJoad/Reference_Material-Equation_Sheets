// Header file for the Stack class

#include <iostream.h>

class Stack {
private:
	int *stackPtr;
	int maxLen;
	int topSub;
public:
	Stack(); // Constructor
	~Stack(); // Destructor
	void push(int);
	void pop();
	int top();
	int empty();
}
