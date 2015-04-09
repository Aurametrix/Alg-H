-- to be rigorous, use explicit import lists not just import List; import Char;
import Data.Char (toLower)
import Data.List (sort, group)
import Control.Arrow ((&&&))

wordCount :: String -> [(String, Int)]
wordCount = map (head &&& length) . group . sort . words . map toLower
