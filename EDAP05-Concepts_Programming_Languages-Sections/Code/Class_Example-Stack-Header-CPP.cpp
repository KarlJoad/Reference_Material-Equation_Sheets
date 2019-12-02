// Implementation file for the Stack class

#include <iostream.h>
#include "Class_Example-Stack-Header-CPP.hpp"
using std::cout;

Stack::Stack() { // Define Constructor Instructions
	stackPtr = new int[100];
	maxLen = 99;
	topSub = -1;
}

Stack::~Stack() {
	delete [] stackPtr;
}

void Stack::push(int number) {}

void Stack::pop() {}

int Stack::top() {}

int Stack::empty() {
	return (topSub == -1);
}
