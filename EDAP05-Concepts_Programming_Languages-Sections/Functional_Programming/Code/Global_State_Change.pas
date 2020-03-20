VAR x : INTEGER; // x is a Global Variable
PROCEDURE P() : INTEGER =
BEGIN
   x := 0;
   RETURN 0
END
// What is below is the "main" program.
BEGIN
   x := 1;
   PRINT x + P() + x
END
