module Effect.Fortuna where

import Control.Applicative (pure)
import Control.Bind (bind, (=<<), (>>=))
import Control.Semigroupoid ((<<<))
import Data.ArrayBuffer.Typed (buffer)
import Data.ArrayBuffer.Types (ArrayBuffer, Uint8Array)
import Data.EuclideanRing ((/))
import Data.Function (($))
import Data.Functor (map)
import Data.Semiring ((+))
import Data.Unit (Unit)
import Effect (Effect)
import Effect.Aff (Aff)
import Effect.Class (liftEffect)
import Protobuf.Common (Bytes (..))

foreign import _initPRNG :: Effect Unit
-- foreign import stopListening  :: Effect Unit

foreign import _randomBytes :: Int -> Effect Uint8Array

initPRNG :: Effect Unit
initPRNG = _initPRNG

randomBytes :: Int -> Aff Bytes
randomBytes n = liftEffect $ map (Bytes <<< buffer) (_randomBytes n)



-- randomInt :: Int -> Int -> Effect Int
-- randomInt from to = pure ((from + to) / 2)


