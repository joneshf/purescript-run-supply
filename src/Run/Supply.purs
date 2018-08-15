module Run.Supply where

import Prelude

import Data.Functor.Variant
  ( FProxy
  , SProxy(..)
  , VariantF
  , onMatch
  )
import Data.Tuple
  ( Tuple(..)
  )
import Run
  ( Run
  )
import Type.Row
  ( type (+)
  )

import Run as Run

newtype Supply a b
  = Supply (a -> b)

derive instance functorSupply ::
  Functor (Supply a)

type SUPPLY a r
  = (supply :: FProxy (Supply a) | r)

_supply ::
  SProxy "supply"
_supply = SProxy

-- | Retreives a value from the supply.
-- |
-- | Depending on how the supply is interpreted, the value may not be unique.
value ::
  forall a r.
  Run (SUPPLY a + r) a
value = Run.lift _supply (Supply identity)

-- | Interpret `SUPPLY a` in some order starting at the given initial value.
-- |
-- | The given function controls how the values are supplied.
-- |
-- | For instance, we could say `run (_ + 2)`
-- | if we wanted to supply `Int`s that increase by two.
run ::
  forall a b r.
  (a -> a) ->
  a ->
  Run (SUPPLY a + r) b ->
  Run r b
run next = Run.runAccum go
  where
  go ::
    a ->
    VariantF (SUPPLY a + r) (Run (SUPPLY a + r) b) ->
    Run r (Tuple a (Run (SUPPLY a + r) b))
  go x = onMatch { supply
                 } (Run.send <<< map (Tuple x))
    where
    supply ::
      Supply a (Run (SUPPLY a + r) b) ->
      Run r (Tuple a (Run (SUPPLY a + r) b))
    supply (Supply f) = pure (Tuple (next x) (f x))
