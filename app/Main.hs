{-# LANGUAGE OverloadedStrings #-}

module Main where

import Type.Type ( CommonConfig(..))
import MyLib.ConfigWorker (makeCommonConfig)

main :: IO ()
main = undefined

startBot :: IO ()
startBot = do
  commonCfg <- makeCommonConfig
  fstIni  <- fstInizialize
  let env = makeEnv
  cycleBot
  return ()

fstInizialize = undefined

makeEnv = undefined
cycleBot = undefined
