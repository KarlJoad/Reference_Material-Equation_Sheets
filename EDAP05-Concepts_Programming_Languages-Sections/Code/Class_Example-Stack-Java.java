class StackClass {
    private int [] stackRef;
    private int maxLen;
    private int topIndex;

    public StackClass() { // A Constructor
        stackRef = new int [100];
        maxLen = 99;
        topIndex = -1;
    }

    public void push(int number) {}
    public void pop() {}
    public int top() {}
    public boolean empty() {
        return (topIndex == -1);
    }
}
