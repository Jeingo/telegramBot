{-# LANGUAGE OverloadedStrings #-}

module MyLib.ConfigWorker where

import qualified Data.Configurator as C 
import qualified Data.Configurator.Types as CT
import qualified Data.Text as T
import Type.Type ( CommonConfig(..))


readConfig :: IO CT.Config
readConfig = C.load [C.Required  "src/Config/commonConf.conf"]

transleteFromConfigToMyType :: CT.Config -> IO CommonConfig
transleteFromConfigToMyType cfg = do
  typeB <- C.lookupDefault "type bot" cfg (T.pack "base.typeBot") :: IO T.Text
  helpM <- C.lookupDefault "help text" cfg (T.pack "base.helpMsg") :: IO T.Text
  repM <- C.lookupDefault "repeat text" cfg (T.pack "base.repeatMsg") :: IO T.Text
  counterR <- C.lookupDefault "counter repeat" cfg (T.pack "base.countFirstRepeat") :: IO T.Text
  return $ CommonConfig typeB helpM repM counterR 

makeCommonConfig :: IO CommonConfig
makeCommonConfig = readConfig >>= transleteFromConfigToMyType 



