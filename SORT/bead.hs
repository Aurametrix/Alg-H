import Data.List
 
beadSort :: [Int] -> [Int]
beadSort = map sum. transpose. transpose. map (flip replicate 1)

-- Example use:
-- *Main> beadSort [2,4,1,3,3]
-- [4,3,3,2,1]
