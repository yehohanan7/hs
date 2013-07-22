module Main  where
import SimpleJSON
import PutJSON

{-main = print (JObject [("foo", JString "Foo"), ("bar", JBool True)])-}

main = print $ renderJValue(JString "test")

