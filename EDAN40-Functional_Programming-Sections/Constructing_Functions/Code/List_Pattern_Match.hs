-- The 'z':_ MUST be written in parentheses because function application has the
-- highest precedence. If they weren't there, then the function would be interpreted
-- as (test 'z'):_ which makes no sense.
test ('z': _) = True
test _ = False -- ANYTHING else must be False, by our definition of the function
