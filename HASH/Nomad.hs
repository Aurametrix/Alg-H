class Monad' m where
        return :: a -> m s x s a
        (>>=)  :: (Eq b) => m s a s' b -> ( b -> m s' b s'' c ) -> m s a s'' c

newtype MapReduce s a s' b = MR { runMR :: ([(s,a)] -> [(s',b)]) }

retMR :: a -> MapReduce s x s a
retMR k = MR (\ss -> [(s,k) | s <- fst <$> ss])

bindMR :: (Eq b,NFData s'',NFData c) => MapReduce s a s' b -> (b -> MapReduce s' b s'' c) -> MapReduce s a s'' c
bindMR f g = MR (\s ->
        let
                fs = runMR f s
                gs = P.map g $ nub $ snd <$> fs
        in
        concat $ map (\g' -> runMR g' fs) gs)
