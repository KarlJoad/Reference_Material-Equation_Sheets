fn max2<T> (x : T, y : T) -> T where T: std::cmp::PartialOrd {
	if x > y {
		return x;
	} else {
		return y;
	}
}

// max2 compiles successfully!

// Now assume we have a record constructed with some fields in it.
struct myRecord { ... }

// We perform some operations.
let r1 : myRecord;
let r2 : myRecord;
let r3 : myRecord = max2::<myRecord>(r1, r2); // COMPILATION FAILS HERE
/* This is because r1 and r2 are NOT bounded by PartialOrd, so max2 doesn't know how to compare them.
 */
