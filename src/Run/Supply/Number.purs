module Run.Supply.Number
  ( decreasing
  , decreasing'
  , increasing
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

-- | Interpret `SUPPLY Number` in a strictly monotonic decreasing order starting
-- | at some arbitrary initial value.
-- |
-- | The initial value is not meaningful.
-- |
-- | Due to the `Semiring` instance for `Number`,
-- | the behavior at "overflow" is unspecified
decreasing ::
  forall a r.
  Run (SUPPLY Number + r) a ->
  Run r a
decreasing = decreasing' 0.0

-- | Interpret `SUPPLY Number` in a strictly monotonic decreasing order starting
-- | at the given initial value.
-- |
-- | Due to the `Semiring` instance for `Number`,
-- | the behavior at "overflow" is unspecified
decreasing' ::
  forall a r.
  Number ->
  Run (SUPPLY Number + r) a ->
  Run r a
decreasing' = run (_ - 1.0)

-- | Interpret `SUPPLY Number` in a strictly monotonic increasing order starting
-- | at some arbitrary initial value.
-- |
-- | The initial value is not meaningful.
-- |
-- | Due to the `Semiring` instance for `Number`,
-- | the behavior at "overflow" is unspecified
increasing ::
  forall a r.
  Run (SUPPLY Number + r) a ->
  Run r a
increasing = increasing' 0.0

-- | Interpret `SUPPLY Number` in a strictly monotonic increasing order starting
-- | at the given initial value.
-- |
-- | Due to the `Semiring` instance for `Number`,
-- | the behavior at "overflow" is unspecified
increasing' ::
  forall a r.
  Number ->
  Run (SUPPLY Number + r) a ->
  Run r a
increasing' = run (_ + 1.0)
