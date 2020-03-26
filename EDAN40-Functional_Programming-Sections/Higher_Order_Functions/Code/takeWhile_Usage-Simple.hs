takeWhile isLower "abc def"
-- "abc"
{- Technically, the space character ' ' is NOT a lowercase character, so we stop
   taking values from the String/Char list once we reach that.
 -}
