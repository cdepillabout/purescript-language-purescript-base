
module Language.PureScript.Comments where

import Prelude

import Data.Generic

data Comment
  = LineComment String
  | BlockComment String
-- deriving (Read, Ord, D.Data, D.Typeable)
-- $(deriveJSON (defaultOptions { sumEncoding = ObjectWithSingleField }) ''Comment)

derive instance genericComment :: Generic Comment
instance showComment :: Show Comment where show = gShow
instance eqComment :: Eq Comment where eq = gEq
