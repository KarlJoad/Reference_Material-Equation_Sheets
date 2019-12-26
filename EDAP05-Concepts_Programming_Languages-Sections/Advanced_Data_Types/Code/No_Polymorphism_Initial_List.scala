def makeIntArray(len : Int, initialVal : Int) = {
  val result = new Array(len); // Create an array with 'len' entries
  for(i <- 0 to (len-1)) {
    result.update(initialVal);
  }
  return result;
}

def makeFloatArray(len : Int, initialVal : Float) = {
  val result = new Array(len); // Create an array with 'len' entries
  for(i <- 0 to (len-1)) {
    result.update(initialVal);
  }
  return result;
}

