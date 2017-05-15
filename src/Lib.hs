module Lib ( someFunc ) where

import System.Environment (getArgs)

getIntArg :: IO [String]
getIntArg = fmap (read . head) getArgs

someFunc :: IO ()
someFunc = do
  link <- getArgs
  case link of
    [url] -> putStrLn url
    _ -> putStr "Invalid arguments"
