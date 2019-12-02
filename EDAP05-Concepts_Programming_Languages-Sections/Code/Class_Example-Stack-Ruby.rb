# Defines a stack of maximum length 100, implemented with an array
class StackClass

  # Constructor
  def initialize
    @stackRef = Array.new(100)
    @maxLen = 100
    @topIndex = -1
  end

  # Push method
  def push(number)
  end
  
  # Pop method
  def pop
  end
  
  # Top method
  def top
  end
  
  # Empty method
  def empty
    @topIndex == -1
  end
end # End of StackClass
