module Run.Supply.Enum
  ( decreasing
  , increasing
  ) where

import Data.Enum
  ( class Enum
  , pred
  , succ
  )
import Data.Maybe
  ( fromMaybe
  )
import Run
  ( Run
  )
import Run.Supply
  ( SUPPLY
  , run
  )
import Type.Row
  ( type (+)
  )

-- | Interpret `SUPPLY a` in a monotonically decreasing order starting
-- | at the given initial value.
-- |
-- | So long as there are enough `Enum a`s,
-- | the values should be strictly decreasing.
-- | Once the start of the `Enum a` is reached, all values will be the same.
decreasing ::
  forall a b r.
  Enum a =>
  a ->
  Run (SUPPLY a + r) b ->
  Run r b
decreasing = run \x ->
  fromMaybe x (pred x)

-- | Interpret `SUPPLY a` in a monotonically increasing order starting
-- | at the given initial value.
-- |
-- | So long as there are enough `Enum a`s,
-- | the values should be strictly increasing.
-- | Once the end of the `Enum a` is reached, all values will be the same.
increasing ::
  forall a b r.
  Enum a =>
  a ->
  Run (SUPPLY a + r) b ->
  Run r b
increasing = run \x ->
  fromMaybe x (succ x)
