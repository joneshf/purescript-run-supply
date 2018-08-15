module Run.Supply.Semiring
  ( increasing
  , increasing'
  ) where

import Prelude

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

-- | Interpret `SUPPLY a` in a monotonically increasing order starting
-- | at some arbitrary initial value.
-- |
-- | The initial value is not meaningful.
-- |
-- | If the type has a finite set of values,
-- | the behavior at "overflow" depends on the `Semiring` instance.
increasing ::
  forall a b r.
  Semiring a =>
  Run (SUPPLY a + r) b ->
  Run r b
increasing = increasing' zero

-- | Interpret `SUPPLY a` in a monotonically increasing order starting
-- | at the given initial value.
-- |
-- | If the type has a finite set of values,
-- | the behavior at "overflow" depends on the `Semiring` instance.
increasing' ::
  forall a b r.
  Semiring a =>
  a ->
  Run (SUPPLY a + r) b ->
  Run r b
increasing' = run (_ + one)
