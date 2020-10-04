switch (predicate) {
case 1:
	break;
case 2:
	expression1;
case 3: {
	statement1;
	statement2;
}
default:
	break;
}

/* The ( and ) are MANDATORY for the switch to occur. In addition, the outer { and }
 * are MANDATORY for each of the cases.
 * If there will be many STATEMENTs in a case, then the body of the case MUST be
 * surrounded by { and }.
 * In addition, each case will "fall-through" by default, meaning the body of an
 * case will also execute the bodies of lower cases. The only way to prevent this
 * action is to include a break in the body of the case. */
