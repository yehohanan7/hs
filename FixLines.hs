splitLines :: String -> [String]

isLineTerminator c = c == '\r' || c == '\n'

splitLines [] = []
splitLines cs =
  let (pre, suf) = break isLineTerminator cs
  in pre : case suf of
    ('\r' : '\n' : rest) -> splitLines rest
    ('\r' : rest) -> splitLines rest
    ('\n' : rest) -> splitLines rest
    _ -> []


    
fixLines :: String -> String
fixLines input = unlines (splitLines input)