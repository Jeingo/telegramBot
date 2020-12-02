module Type.Type where

import qualified Data.Text as T

data CommonConfig = CommonConfig
 { typeBot :: T.Text
 , helpMsg :: T.Text
 , repeatMsg :: T.Text
 , buttonStart :: T.Text } deriving Show

data AddConfig = AddConfigTg
 { tokenTg :: T.Text
 } 
 | AddConfigVK

