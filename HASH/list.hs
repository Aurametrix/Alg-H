push :: a -> [a] -> ((),[a])  -- return a tuple containing a 'nothing' and a new stack
push elem stack = ((), (:) elem stack)

pop :: [a] -> (a, [a])  -- return a tuple containing the popped element and the new stack
pop [] = error "Can't pop from an empty stack!"
pop ((:) x stack) = (x, stack)
