module Main where

import qualified Data.Configurator as C 

main :: IO ()
main = undefined

startBot :: IO ()
startBot = do
  conf <- readConfig
  fstIni  <- fstInizialize
  let env = makeEnv
  cycleBot
  return ()


readConfig = undefined
fstInizialize = undefined
makeEnv = undefined
cycleBot = undefined
