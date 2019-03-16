typeOf T = Right TBool
typeOf F = Right TBool
typeOf O = Right TNat
typeOf (IfThenElse t1 t2 t3) =
    case typeOf t1 of
        Right TBool ->
            let t2' = typeOf t2
                t3' = typeOf t3 in
                if t2' == t3'
                then t2'
                else Left "Types mismatch"
        _ -> Left "Unsupported type for IfThenElse"
typeOf (Succ k) =
    case typeOf k of
        Right TNat -> Right TNat
        _ -> Left "Unsupported type for Succ"
typeOf (Pred k) =
    case typeOf k of
        Right TNat -> Right TNat
        _ -> Left "Unsupported type for Pred"
typeOf (IsZero k) =
    case typeOf k of
        Right TNat -> Right TBool
        _ -> Left "Unsupported type for IsZero"
