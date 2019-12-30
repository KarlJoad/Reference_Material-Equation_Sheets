/* T <: Cmp ensure that T MUST be a subtype of Cmp (implements Cmp)
 */
trait PriorityQueue[T <: Cmp] {
  def push(v : T)
  def getTop() : T
}
