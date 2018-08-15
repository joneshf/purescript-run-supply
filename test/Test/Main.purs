module Test.Main
  ( main
  ) where

import Prelude

import Effect
  ( Effect
  )
import Run
  ( Run
  )
import Test.Spec
  ( describe
  , it
  )
import Test.Spec.Runner
  ( Reporter
  )
import Type.Row
  ( type (+)
  )

import Run as Run
import Run.Supply as Run.Supply
import Run.Supply.BooleanAlgebra as Run.Supply.BooleanAlgebra
import Run.Supply.Enum as Run.Supply.Enum
import Run.Supply.Int as Run.Supply.Int
import Run.Supply.Number as Run.Supply.Number
import Run.Supply.Semiring as Run.Supply.Semiring
import Test.Spec as Test.Spec
import Test.Spec.Assertions as Test.Spec.Assertions
import Test.Spec.Reporter.Spec as Test.Spec.Reporter.Spec
import Test.Spec.Runner as Test.Spec.Runner

main ::
  Effect Unit
main = Test.Spec.Runner.run reporters do
  booleanAlgebra
  enum
  int
  number
  semiring
  supply

reporters ::
  Array Reporter
reporters = [ Test.Spec.Reporter.Spec.specReporter
            ]

booleanAlgebra ::
  Test.Spec.Spec Unit
booleanAlgebra = describe "Run.Supply.BooleanAlgebra" do
  describe "not" do
    it "alternates values" do
      Run.runBaseAff' $ Run.Supply.BooleanAlgebra.not false do
        x <- Run.Supply.value
        y <- Run.Supply.value
        z <- Run.Supply.value
        x `shouldEqual` not y
        x `shouldEqual` z
  describe "notFF" do
    it "starts with `ff`" do
      Run.runBaseAff' $ Run.Supply.BooleanAlgebra.notFF do
        x <- Run.Supply.value
        x `shouldEqual` false
  describe "notTT" do
    it "starts with `tt`" do
      Run.runBaseAff' $ Run.Supply.BooleanAlgebra.notTT do
        x <- Run.Supply.value
        x `shouldEqual` true

enum ::
  Test.Spec.Spec Unit
enum = describe "Run.Supply.Enum" do
  describe "decreasing" do
    it "generates `Enum`s that are decreasing" do
      Run.runBaseAff' $ Run.Supply.Enum.decreasing 0 do
        x <- Run.Supply.value
        y <- Run.Supply.value
        y `shouldBeLessThan` x
  describe "increasing" do
    it "generates `Enum`s that are increasing" do
      Run.runBaseAff' $ Run.Supply.Enum.increasing 0 do
        x <- Run.Supply.value
        y <- Run.Supply.value
        x `shouldBeLessThan` y

int ::
  Test.Spec.Spec Unit
int = describe "Run.Supply.Int" do
  describe "decreasing" do
    it "generates `Int`s that are decreasing" do
      Run.runBaseAff' $ Run.Supply.Int.decreasing do
        x <- Run.Supply.value
        y <- Run.Supply.value
        y `shouldBeLessThan` x
  describe "decreasing'" do
    it "generates `Int`s that are decreasing'" do
      Run.runBaseAff' $ Run.Supply.Int.decreasing' 0 do
        x <- Run.Supply.value
        y <- Run.Supply.value
        y `shouldBeLessThan` x
  describe "increasing" do
    it "generates `Int`s that are increasing" do
      Run.runBaseAff' $ Run.Supply.Int.increasing do
        x <- Run.Supply.value
        y <- Run.Supply.value
        x `shouldBeLessThan` y
  describe "increasing'" do
    it "generates `Int`s that are increasing'" do
      Run.runBaseAff' $ Run.Supply.Int.increasing' 0 do
        x <- Run.Supply.value
        y <- Run.Supply.value
        x `shouldBeLessThan` y

number ::
  Test.Spec.Spec Unit
number = describe "Run.Supply.Number" do
  describe "decreasing" do
    it "generates `Number`s that are decreasing" do
      Run.runBaseAff' $ Run.Supply.Number.decreasing do
        x <- Run.Supply.value
        y <- Run.Supply.value
        y `shouldBeLessThan` x
  describe "decreasing'" do
    it "generates `Number`s that are decreasing'" do
      Run.runBaseAff' $ Run.Supply.Number.decreasing' 0.0 do
        x <- Run.Supply.value
        y <- Run.Supply.value
        y `shouldBeLessThan` x
  describe "increasing" do
    it "generates `Number`s that are increasing" do
      Run.runBaseAff' $ Run.Supply.Number.increasing do
        x <- Run.Supply.value
        y <- Run.Supply.value
        x `shouldBeLessThan` y
  describe "increasing'" do
    it "generates `Number`s that are increasing'" do
      Run.runBaseAff' $ Run.Supply.Number.increasing' 0.0 do
        x <- Run.Supply.value
        y <- Run.Supply.value
        x `shouldBeLessThan` y

semiring ::
  Test.Spec.Spec Unit
semiring = describe "Run.Supply.Semiring" do
  describe "increasing" do
    it "generates `Semiring`s that are increasing" do
      Run.runBaseAff' $ Run.Supply.Semiring.increasing do
        x :: Number <- Run.Supply.value
        y <- Run.Supply.value
        x `shouldBeLessThan` y
  describe "increasing'" do
    it "generates `Semiring`s that are increasing'" do
      Run.runBaseAff' $ Run.Supply.Semiring.increasing' 0 do
        x <- Run.Supply.value
        y <- Run.Supply.value
        x `shouldBeLessThan` y

supply ::
  Test.Spec.Spec Unit
supply = describe "Run.Supply" do
  describe "run" do
    it "generates values with the given function" do
      Run.runBaseAff' $ Run.Supply.run (_ <> "!") "test" do
        x <- Run.Supply.value
        y <- Run.Supply.value
        z <- Run.Supply.value
        (x <> "!") `shouldEqual` y
        (y <> "!") `shouldEqual` z

-- Boilerplate
type EFFECT r
  = (effect :: Run.EFFECT | r)

type AFF r
  = (aff :: Run.AFF | r)

shouldEqual ::
  forall a r.
  Eq a =>
  Show a =>
  a ->
  a ->
  Run (AFF + r) Unit
shouldEqual x y = Run.liftAff (Test.Spec.Assertions.shouldEqual x y)

shouldBeLessThan ::
  forall a r.
  Ord a =>
  Show a =>
  a ->
  a ->
  Run (AFF + r) Unit
shouldBeLessThan x y = when (x >= y) do
  Run.liftAff (Test.Spec.Assertions.fail $ show x <> " \8814 " <> show y)
