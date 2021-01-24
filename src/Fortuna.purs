module Effect.Fortuna where

import Control.Applicative (pure)
import Control.Bind (bind, (=<<), (>>=))
import Control.Semigroupoid ((<<<))
import Data.ArrayBuffer.Typed (buffer)
import Data.ArrayBuffer.Types (ArrayBuffer, Uint8Array)
import Data.Function (($))
import Data.Functor (map)
import Data.Unit (Unit)
import Effect (Effect)
import Protobuf.Common (Bytes (..))

foreign import _initPRNG :: Effect Unit
-- foreign import stopListening  :: Effect Unit

foreign import _randomBytes :: Int -> Effect Uint8Array

initPRNG :: Effect Unit
initPRNG = _initPRNG

randomBytes :: Int -> Effect Bytes
randomBytes n = map (Bytes <<< buffer) (_randomBytes n)


-- randomBytes' :: Int -> Effect Bytes
-- randomBytes' n = (_randomBytes n) >>= (pure <<< Bytes)

-- randomBytes'' :: Int -> Effect Bytes
-- randomBytes'' n = (pure <<< Bytes) =<< (_randomBytes n)

-- randomBytes'' :: Int -> Effect Bytes
-- randomBytes'' n = (pure <<< Bytes) =<< (_randomBytes n)

-- randomBytes''' :: Int -> Effect Bytes
-- randomBytes''' n = do
--     r <- (_randomBytes n)
--     pure $ Bytes r

randomInt -> Int -> Int -> Int
randomInt from to = 