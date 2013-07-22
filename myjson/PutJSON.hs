module PutJSON where
import SimpleJSON
import Data.List

renderJValue :: JValue -> String
renderJValue (JString str) = str
renderJValue (JNumber n) = show n
renderJValue (JBool True) = "true"
renderJValue (JBool False) = "false"
renderJValue JNull = "null"

renderJValue (JObject o) = "{" ++ pairs o ++ "}"
    where pairs [] = ""
          pairs ps = intercalate ", " (map renderPair ps)
          renderPair (k, v) = show k ++ ": " ++ renderJValue v


renderJValue (JArray a) = "[" ++ renderArray a ++ "]"
    where renderArray [] = ""
          renderArray xs = intercalate ", " (map renderJValue xs)





putJValue :: JValue -> IO ()
putJValue v = putStrLn (renderJValue v)