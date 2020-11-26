module Type where


data Environment = Env
  { cofig :: Config
  , ini   :: FirstIni }



data Config = Config
  { confVk :: SubConfVk 
  , confTg :: SubConfTg 
  , commonC :: CommonC }

data SubConfVk = SubConfVk
data SubConfTg = SubConfTg
data CommonC = CommonC


data FirstIni = FirstIni
  { iniVk :: SubIniVk 
  , iniTg :: SubIniTg }

data SubIniVk = SubIniVk
data SubIniTg = SubIniTg


