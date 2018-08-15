module Run.Supply.Int
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

-- | Interpret `SUPPLY Int` in a strictly monotonic decreasing order starting
-- | at some arbitrary initial value.
-- |
-- | The initial value is not meaningful.
-- |
-- | Due to the `Semiring` instance for `Int`,
-- | the behavior at "overflow" is unspecified
decreasing ::
  forall a r.
  Run (SUPPLY Int + r) a ->
  Run r a
decreasing = decreasing' 0

-- | Interpret `SUPPLY Int` in a strictly monotonic decreasing order starting
-- | at the given initial value.
-- |
-- | Due to the `Semiring` instance for `Int`,
-- | the behavior at "overflow" is unspecified
decreasing' ::
  forall a r.
  Int ->
  Run (SUPPLY Int + r) a ->
  Run r a
decreasing' = run (_ - 1)

-- | Interpret `SUPPLY Int` in a strictly monotonic increasing order starting
-- | at some arbitrary initial value.
-- |
-- | The initial value is not meaningful.
-- |
-- | Due to the `Semiring` instance for `Int`,
-- | the behavior at "overflow" is unspecified
increasing ::
  forall a r.
  Run (SUPPLY Int + r) a ->
  Run r a
increasing = increasing' 0

-- | Interpret `SUPPLY Int` in a strictly monotonic increasing order starting
-- | at the given initial value.
-- |
-- | Due to the `Semiring` instance for `Int`,
-- | the behavior at "overflow" is unspecified
increasing' ::
  forall a r.
  Int ->
  Run (SUPPLY Int + r) a ->
  Run r a
increasing' = run (_ + 1)
