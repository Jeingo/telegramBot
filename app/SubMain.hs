module SubMain where

import Type.TypeTg

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
