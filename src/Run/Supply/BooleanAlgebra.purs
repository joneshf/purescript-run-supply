module Run.Supply.BooleanAlgebra
  ( not
  , notFF
  , notTT
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

import Data.BooleanAlgebra as Data.BooleanAlgebra

-- | Interpret `SUPPLY a` in an alternating order using the `BooleanAlgebra`.
-- |
-- | This is useful when you need two values that alternate between each other,
-- | but don't want to attempt to maintain the state between those values.
-- | For instance, filling out a checkerboard.
not ::
  forall a b r.
  BooleanAlgebra a =>
  a ->
  Run (SUPPLY a + r) b ->
  Run r b
not = run Data.BooleanAlgebra.not

-- | Interpret `SUPPLY a` in an alternating order using the `BooleanAlgebra`.
-- |
-- | Starts with the `ff` value.
notFF ::
  forall a b r.
  BooleanAlgebra a =>
  Run (SUPPLY a + r) b ->
  Run r b
notFF = run Data.BooleanAlgebra.not Data.BooleanAlgebra.ff

-- | Interpret `SUPPLY a` in an alternating order using the `BooleanAlgebra`.
-- |
-- | Starts with the `tt` value.
notTT ::
  forall a b r.
  BooleanAlgebra a =>
  Run (SUPPLY a + r) b ->
  Run r b
notTT = run Data.BooleanAlgebra.not Data.BooleanAlgebra.tt
