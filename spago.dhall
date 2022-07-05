{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "purescript-fortuna"
, dependencies =
  [ "arraybuffer-types"
  , "arraybuffer"
  , "console"
  , "foldable-traversable"
  , "monad-control"
  , "psci-support"
  , "strings"
  , "test-unit"
  , "aff"
  , "effect"
  , "prelude"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
