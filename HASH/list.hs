push :: a -> [a] -> ((),[a])  -- return a tuple containing a 'nothing' and a new stack
push elem stack = ((), (:) elem stack)

pop :: [a] -> (a, [a])  -- return a tuple containing the popped element and the new stack
pop [] = error "Can't pop from an empty stack!"
pop ((:) x stack) = (x, stack)


-- Simulating infinite lists as functions from Integer
cons x xs n | n == 0    = x
            | otherwise = xs (n-1)
tailF xs n = xs (n+1)

fib = 1 `cons` (1 `cons` (\n -> fib n + tailF fib n))
