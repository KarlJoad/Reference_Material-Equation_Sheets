/* Requires that any subtype provide an operation that llows for comparison
 * against any object.
 */
trait Cmp {
  def isGreaterThan(v : Any) : Boolean
}
