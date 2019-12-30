/* By bounding T to be a subtype of GT[T], we only allow T's which have the
 * isGreaterThan operation specified.
 */
trait GTPriorityQueue[T <: GT[T]] {
  def push(v : T)
  def getTop() : T
}
