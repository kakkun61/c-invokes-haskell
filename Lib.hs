{-# LANGUAGE ForeignFunctionInterface #-}

module Lib (helloHaskell) where

helloHaskell :: IO ()
helloHaskell = putStrLn "Hello from Haskell!"

foreign export ccall helloHaskell :: IO ()
