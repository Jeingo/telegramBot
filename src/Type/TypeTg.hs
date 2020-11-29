module Type.TypeTg where

import qualified Data.Text as T
import qualified Type.Type as TYPE

data Config = Config
 { token :: T.Text }

data FirstIni = FstIni

data Environment = Env
  { commonC :: TYPE.CommonConfig
  , cfg :: Config
  , fstI :: FirstIni }
