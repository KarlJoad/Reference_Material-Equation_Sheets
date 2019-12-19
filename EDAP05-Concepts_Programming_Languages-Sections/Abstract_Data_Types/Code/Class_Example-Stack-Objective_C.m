// Interface and implementation of a simple stack

#import <Foundation/Foundation.h>

// Interface Section
@interface
Stack: NSObject {
	int stackArray [100];
	int stackPtr;
	int maxLen;
	int topSub;
}

-(void) push: (int number);
-(void) pop;
-(int) top;
-(int) empty;
@end

// Implementation Section
@implementation Stack
-(Stack*) initWith {
	maxLen = 100;
	topSub = -1;
	stackPtr = stackArray;
	return self;
}

-(void) push: (int) number {}

-(void) pop {}

-(int) top {}

-(int) empty {}

int main(int argc, char* argv[]) {}
@end
