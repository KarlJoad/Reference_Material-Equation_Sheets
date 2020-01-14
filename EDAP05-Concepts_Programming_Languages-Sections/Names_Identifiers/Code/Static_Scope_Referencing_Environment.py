g = 3  # A global variable
def sub1():
    a = 5  # Create a local variable
    b = 7  # Create another local variable
    ...    # EXECUTION POINT 1
    def sub2():
        global g  # The global variable g is assignable here now
        c = 9     # Create a new local variable
        ...       # EXECUTION POINT 2
        def sub3():
            nonlocal c  # Makes the nonlocal variable "c" visible here
            g = 11
            ...         # EXECUTION POINT 3
