{-# LANGUAGE TemplateHaskell #-}
module Main where

import Distribution.PackageDescription.TH

main = do
  putStrLn $(packageVariable (pkgVersion . package))
  putStrLn $(packageVariableFrom "../kit/kit.cabal" (pkgVersion . package))

