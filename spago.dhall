{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "purescript-fortuna"
, dependencies =
  [ "arraybuffer-types"
  , "aff"
  , "prelude"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
