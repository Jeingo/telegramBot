module Type.Type where

import qualified Data.Text as T

data CommonConfig = CommonConfig
 { typeBot :: T.Text
 , helpMsg :: T.Text
 , buttonMsg :: T.Text
 , repeatMsg :: T.Text
 , buttonStart :: Int }

