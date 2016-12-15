{-# LANGUAGE ForeignFunctionInterface #-}
module Surparser where

import Foreign.C

msc :: Ord a => [a] -> Int
msc xs = maximum [scount z zs | z:zs <- tails xs]

scount x xs = length(filter (x <) xs)
tails [] = []
tails (x:xs) = (x:xs):tails xs

msc_hs :: CString -> IO CInt
msc_hs xs = do
  temp <- peekCString xs
  return (fromIntegral(msc temp))

foreign export ccall msc_hs :: CString -> IO CInt
