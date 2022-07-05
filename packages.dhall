let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.15.2-20220630/packages.dhall
        sha256:691aff166010760f18ab1f4842ba6184f43747756e00579a050a2a46fa22d014

in  upstream
	with arraybuffer =
    { dependencies =
      [ "arraybuffer-types"
      , "arrays"
      , "effect"
      , "float32"
      , "functions"
      , "gen"
      , "maybe"
      , "nullable"
      , "prelude"
      , "tailrec"
      , "uint"
      , "unfoldable"
      ]
    , repo = "https://github.com/clipperz/purescript-arraybuffer"
    , version = "clipperz"
    }
