# Loads

load(
    "@io_bazel_rules_purescript//purescript:purescript.bzl",
    "purescript_lib",
    "purescript_test",
)

# Dependencies

source_dependencies = [
    "@arrays//:pkg",
    "@aff//:pkg",
    "@bifunctors//:pkg",
    "@catenable_lists//:pkg",
    "@const//:pkg",
    "@contravariant//:pkg",
    "@control//:pkg",
    "@datetime//:pkg",
    "@distributive//:pkg",
    "@effect//:pkg",
    "@either//:pkg",
    "@enums//:pkg",
    "@exceptions//:pkg",
    "@exists//:pkg",
    "@foldable_traversable//:pkg",
    "@free//:pkg",
    "@functions//:pkg",
    "@functors//:pkg",
    "@gen//:pkg",
    "@globals//:pkg",
    "@identity//:pkg",
    "@integers//:pkg",
    "@invariant//:pkg",
    "@lazy//:pkg",
    "@lists//:pkg",
    "@math//:pkg",
    "@maybe//:pkg",
    "@newtype//:pkg",
    "@nonempty//:pkg",
    "@ordered_collections//:pkg",
    "@orders//:pkg",
    "@parallel//:pkg",
    "@partial//:pkg",
    "@prelude//:pkg",
    "@proxy//:pkg",
    "@refs//:pkg",
    "@run//:pkg",
    "@st//:pkg",
    "@tailrec//:pkg",
    "@transformers//:pkg",
    "@tuples//:pkg",
    "@type_equality//:pkg",
    "@typelevel_prelude//:pkg",
    "@unfoldable//:pkg",
    "@unsafe_coerce//:pkg",
    "@variant//:pkg",
]

test_dependencies = [
    "@ansi//:pkg",
    "@console//:pkg",
    "@generics_rep//:pkg",
    "@mmorph//:pkg",
    "@pipes//:pkg",
    "@spec//:pkg",
    "@strings//:pkg",
]

# Settings

config_setting(
    name = "circleci",
    define_values = {
        "ci": "circleci",
    },
)

compiler_flags = select({
    ":circleci": [
        "+RTS",
        "-N2",
        "-RTS",
    ],
    "//conditions:default": [],
})

# Targets

# Missing targets: format, repl, watch

purescript_lib(
    compiler_flags = compiler_flags,
    deps = source_dependencies,
    name = "run-supply",
    srcs = glob(["src/**/*.purs"]),
)

purescript_test(
    compiler_flags = compiler_flags,
    deps = source_dependencies + test_dependencies,
    name = "run-supply-test",
    srcs = glob(["src/**/*.purs", "test/**/*.purs"]),
)
