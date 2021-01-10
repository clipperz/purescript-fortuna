{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "purescript-fortuna"
, dependencies = [ "console", "effect", "protobuf", "psci-support" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
