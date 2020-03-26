dropWhile isLower "abc def"
-- " def"
{- Technically, the space character ' ' is NOT a lowercase character, so we drop
   all the lowercase values from the String/Char list UNTIL we reach that.
 -}
