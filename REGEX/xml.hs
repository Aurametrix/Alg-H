{-# LANGUAGE Arrows #-}

quoteParser :: (ArrowXml a) => a XmlTree Quote
quoteParser =
    hasName "Contents" /> hasName "StockQuote" >>> proc x -> do
    symbol <- getAttrValue "Symbol" -< x
    date <- readTime defaultTimeLocale "%d-%m-%Y" ^<< getAttrValue "Date" -< x
    time <- readTime defaultTimeLocale "%H:%M" ^<< getAttrValue "Time" -< x
    price <- read ^<< getAttrValue "Price" -< x
    returnA -< Quote symbol date time price

parseQuoteDocument :: String -> IO (Maybe Quote)
parseQuoteDocument xml =
    liftM listToMaybe . runX . single $
    readString [] xml >>> getChildren >>> quoteParser
