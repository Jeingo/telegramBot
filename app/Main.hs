
module Main where

import Type.Type ( CommonConfig(..), AddConfig(..))
import MyLib.ConfigWorker (makeCommonConfig, makeAdditionalConfig)

main :: IO ()
main = undefined

startBot :: IO ()
startBot = do
  commonCfg <- makeCommonConfig
  let tpBot = typeBot commonCfg
  additionalCfg <- makeAdditionalConfig tpBot
  fstIni  <- fstInizialize
  let env = makeEnv
  cycleBot
  return ()

fstInizialize = undefined

makeEnv = undefined
cycleBot = undefined


