{-# LANGUAGE OverloadedStrings #-}

module MyLib.ConfigWorker where

import qualified Data.Configurator as C 
import qualified Data.Configurator.Types as CT
import qualified Data.Text as T
import Type.Type (CommonConfig(..), AddConfig(..))


readCommonConfig :: IO CT.Config
readCommonConfig = C.load [C.Required  "src/Config/commonConf.conf"]

translateFromConfigToMyType :: CT.Config -> IO CommonConfig
translateFromConfigToMyType cfg = do
  typeB    <- C.lookupDefault "type bot" cfg (T.pack "base.typeBot") :: IO T.Text
  helpM    <- C.lookupDefault "help text" cfg (T.pack "base.helpMsg") :: IO T.Text
  repM     <- C.lookupDefault "repeat text" cfg (T.pack "base.repeatMsg") :: IO T.Text
  counterR <- C.lookupDefault "counter repeat" cfg (T.pack "base.countFirstRepeat") :: IO T.Text
  return $ CommonConfig typeB helpM repM counterR 

makeCommonConfig :: IO CommonConfig
makeCommonConfig = readCommonConfig >>= translateFromConfigToMyType 



readAddConfig :: IO CT.Config
readAddConfig = C.load [C.Required "src/Config/additionalConf.conf"] 

translateFromAddConfigToMyType :: T.Text -> CT.Config -> IO AddConfig
translateFromAddConfigToMyType tpBot cfg = do
  if tpBot == "Tg"
    then do tokenTg <- C.lookupDefault "type tg" cfg (T.pack "add.tg.token") :: IO T.Text
            return $ AddConfigTg tokenTg
    else if tpBot == "VK" 
           then do tokenVK <- C.lookupDefault "type vk" cfg (T.pack "add.vk.token") :: IO T.Text
                   return $ AddConfigVK tokenVK
           else error "Type is incorrect!"
  

makeAdditionalConfig :: T.Text -> IO AddConfig
makeAdditionalConfig tpBot = readAddConfig >>= translateFromAddConfigToMyType tpBot
