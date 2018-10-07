type TransError = String

translateToJS :: Expr -> Either TransError JSExpr
translateToJS = \case
  ATOM (Symbol s) -> pure $ JSSymbol s
  ATOM (Int i)    -> pure $ JSInt i
  LIST xs -> translateList xs

translateList :: [Expr] -> Either TransError JSExpr
translateList = \case
  []     -> Left "translating empty list"
  ATOM (Symbol s):xs
    | Just f <- lookup s builtins ->
      f xs
  f:xs ->
    JSFunCall <$> translateToJS f <*> traverse translateToJS xs
