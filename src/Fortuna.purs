module Effect.Fortuna where

import Control.Applicative (pure)
import Control.Bind (bind, (=<<), (>>=))
import Control.Semigroupoid ((<<<))
import Data.ArrayBuffer.Types (ArrayBuffer, Uint8Array)
import Data.EuclideanRing ((/))
import Data.Function (($))
import Data.Functor (map)
-- import Data.Semiring ((+))
import Data.Unit (Unit)
import Effect (Effect)
import Effect.Aff (Aff)
import Effect.Aff.Compat (EffectFnAff, fromEffectFnAff)
import Effect.Class (liftEffect)

import Bytes (Bytes(..))
-- type Bytes = Uint8Array

foreign import _initPRNG    :: EffectFnAff Unit
initPRNG :: Aff Unit
initPRNG = fromEffectFnAff _initPRNG

-- # better use Aff (instead of Effect) as its answer is async;
-- # see also https://pursuit.purescript.org/packages/purescript-aff-promise/2.0.1 to transform a Promise (in JS land) to Aff
foreign import _randomBytes :: Int -> EffectFnAff Uint8Array
randomBytes :: Int -> Aff Bytes
randomBytes n = map Bytes $ fromEffectFnAff (_randomBytes n)

-- # Example on how to bind a JS Async API into Aff: https://github.com/kritzcreek/bind-aff-example
