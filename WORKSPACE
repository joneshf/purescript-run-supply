# Rules

RULES_PURESCRIPT_COMMIT = "42ff8bd22c604bbaf36f58a7d459f6a0131b9978"
RULES_PURESCRIPT_SHA = "ae2bc116c07b1dafb1633116b5982020534f6829bce187d9446d9c071b7b5879"

http_archive(
    name = "io_bazel_rules_purescript",
    sha256 = RULES_PURESCRIPT_SHA,
    strip_prefix = "rules_purescript-{}".format(
        RULES_PURESCRIPT_COMMIT
    ),
    url = "https://github.com/felixmulder/rules_purescript/archive/{}.tar.gz".format(
        RULES_PURESCRIPT_COMMIT
    ),
)

# Loads

load(
    "@io_bazel_rules_purescript//purescript:purescript.bzl",
    "purescript_dep",
    "purescript_toolchain",
)

# Toolchains

PURESCRIPT_SHA = "ccd777d9350c2e238d5be26419d3f54e2a335940b82c0baed040698c7cb1c7f1"
PURESCRIPT_VERSION = "0.12.0"

purescript_toolchain(
    sha256 = PURESCRIPT_SHA,
    url = "https://github.com/purescript/purescript/releases/download/v{}/linux64.tar.gz".format(
        PURESCRIPT_VERSION,
    ),
)

# Dependencies

ANSI_SHA = "f9657b21df71487dce3091baf3f5f8758403d78eb79cd73443c24ee37d6f8929"
ANSI_VERSION = "5.0.0"

purescript_dep(
    name = "ansi",
    sha256 = ANSI_SHA,
    strip_prefix = "purescript-ansi-{}".format(ANSI_VERSION),
    url = "https://github.com/hdgarrood/purescript-ansi/archive/v{}.tar.gz".format(
        ANSI_VERSION,
    ),
)

ARRAYS_SHA = "9801ea0790c32c2e72e8ac32dc515f4cc7dffd30eb1b73d6957d6937f5bdd8cf"
ARRAYS_VERSION = "5.0.0"

purescript_dep(
    name = "arrays",
    sha256 = ARRAYS_SHA,
    strip_prefix = "purescript-arrays-{}".format(ARRAYS_VERSION),
    url = "https://github.com/purescript/purescript-arrays/archive/v{}.tar.gz".format(
        ARRAYS_VERSION,
    ),
)

AFF_SHA = "f6aa0d1d8559efc18a78786a6d64ef3222aa8530b3f2b4ba4dbbe65eb2f0f002"
AFF_VERSION = "5.0.1"

purescript_dep(
    name = "aff",
    sha256 = AFF_SHA,
    strip_prefix = "purescript-aff-{}".format(AFF_VERSION),
    url = "https://github.com/slamdata/purescript-aff/archive/v{}.tar.gz".format(
        AFF_VERSION,
    ),
)

BIFUNCTORS_SHA = "0d417e82256a012ca28cd6a414601005db580c020fdf9f0c3b0dc3d0d7f71859"
BIFUNCTORS_VERSION = "4.0.0"

purescript_dep(
    name = "bifunctors",
    sha256 = BIFUNCTORS_SHA,
    strip_prefix = "purescript-bifunctors-{}".format(BIFUNCTORS_VERSION),
    url = "https://github.com/purescript/purescript-bifunctors/archive/v{}.tar.gz".format(
        BIFUNCTORS_VERSION,
    ),
)

CATENABLE_LISTS_SHA = "60db001cdbca58a74f5be086eab0a5500540eb211728080bb694687b533bd0e2"
CATENABLE_LISTS_VERSION = "5.0.0"

purescript_dep(
    name = "catenable_lists",
    sha256 = CATENABLE_LISTS_SHA,
    strip_prefix = "purescript-catenable-lists-{}".format(CATENABLE_LISTS_VERSION),
    url = "https://github.com/purescript/purescript-catenable-lists/archive/v{}.tar.gz".format(
        CATENABLE_LISTS_VERSION,
    ),
)

CONSOLE_SHA = "5b0d2089e14a3611caf9d397e9dd825fc5c8f39b049d19448c9dbbe7a1b595bf"
CONSOLE_VERSION = "4.1.0"

purescript_dep(
    name = "console",
    sha256 = CONSOLE_SHA,
    strip_prefix = "purescript-console-{}".format(CONSOLE_VERSION),
    url = "https://github.com/purescript/purescript-console/archive/v{}.tar.gz".format(
        CONSOLE_VERSION,
    ),
)

CONST_SHA = "3c0d05be9de6d64cd8cd65419fedaeb97031c554638f7dc27de509b223e7edeb"
CONST_VERSION = "4.0.0"

purescript_dep(
    name = "const",
    sha256 = CONST_SHA,
    strip_prefix = "purescript-const-{}".format(CONST_VERSION),
    url = "https://github.com/purescript/purescript-const/archive/v{}.tar.gz".format(
        CONST_VERSION,
    ),
)

CONTRAVARIANT_SHA = "f65660475f52e5718be4b65b2811564f265001cd0704ecc4ccf53895e16be175"
CONTRAVARIANT_VERSION = "4.0.0"

purescript_dep(
    name = "contravariant",
    sha256 = CONTRAVARIANT_SHA,
    strip_prefix = "purescript-contravariant-{}".format(CONTRAVARIANT_VERSION),
    url = "https://github.com/purescript/purescript-contravariant/archive/v{}.tar.gz".format(
        CONTRAVARIANT_VERSION,
    ),
)

CONTROL_SHA = "66a0d10066dc890b99a4e02ce56211e9eeca7d8ac810acc903448c2e42ff096c"
CONTROL_VERSION = "4.1.0"

purescript_dep(
    name = "control",
    sha256 = CONTROL_SHA,
    strip_prefix = "purescript-control-{}".format(CONTROL_VERSION),
    url = "https://github.com/purescript/purescript-control/archive/v{}.tar.gz".format(
        CONTROL_VERSION,
    ),
)

DATETIME_SHA = "af3467cb95322d8af6527b014d2eedc82f4263d33da777c1008b2e571d7b05d5"
DATETIME_VERSION = "4.0.0"

purescript_dep(
    name = "datetime",
    sha256 = DATETIME_SHA,
    strip_prefix = "purescript-datetime-{}".format(DATETIME_VERSION),
    url = "https://github.com/purescript/purescript-datetime/archive/v{}.tar.gz".format(
        DATETIME_VERSION,
    ),
)

DISTRIBUTIVE_SHA = "ad5fcc4fd76884af5dc9ddc7c6b253e6d162a9c6bc17761ce4e4ce2002a6e43f"
DISTRIBUTIVE_VERSION = "4.0.0"

purescript_dep(
    name = "distributive",
    sha256 = DISTRIBUTIVE_SHA,
    strip_prefix = "purescript-distributive-{}".format(DISTRIBUTIVE_VERSION),
    url = "https://github.com/purescript/purescript-distributive/archive/v{}.tar.gz".format(
        DISTRIBUTIVE_VERSION,
    ),
)

EFFECT_SHA = "5254c048102a6f4360a77096c6162722c4c4b2449983f26058d75d4e5be9d301"
EFFECT_VERSION = "2.0.0"

purescript_dep(
    name = "effect",
    sha256 = EFFECT_SHA,
    strip_prefix = "purescript-effect-{}".format(EFFECT_VERSION),
    url = "https://github.com/purescript/purescript-effect/archive/v{}.tar.gz".format(
        EFFECT_VERSION,
    ),
)

EITHER_SHA = "0448c6ae3b30a643bc2fc88be5a2b80c77e0bffb671d48030e4e90bf6e6b43cc"
EITHER_VERSION = "4.0.0"

purescript_dep(
    name = "either",
    sha256 = EITHER_SHA,
    strip_prefix = "purescript-either-{}".format(EITHER_VERSION),
    url = "https://github.com/purescript/purescript-either/archive/v{}.tar.gz".format(
        EITHER_VERSION,
    ),
)

ENUMS_SHA = "9a549991c5f9fe31380e1792bea41bdce850a09fbbe918ac3f73e710e1179959"
ENUMS_VERSION = "4.0.0"

purescript_dep(
    name = "enums",
    sha256 = ENUMS_SHA,
    strip_prefix = "purescript-enums-{}".format(ENUMS_VERSION),
    url = "https://github.com/purescript/purescript-enums/archive/v{}.tar.gz".format(
        ENUMS_VERSION,
    ),
)

EXCEPTIONS_SHA = "324825c9eda4b76190073ec7549aff0ee650566f02f0dfbefeda74b447d81853"
EXCEPTIONS_VERSION = "4.0.0"

purescript_dep(
    name = "exceptions",
    sha256 = EXCEPTIONS_SHA,
    strip_prefix = "purescript-exceptions-{}".format(ENUMS_VERSION),
    url = "https://github.com/purescript/purescript-exceptions/archive/v{}.tar.gz".format(
        EXCEPTIONS_VERSION,
    ),
)

EXISTS_SHA = "d16eb6ca9d2c36f540bcfae0257e22bffd332dddf858e4692bcf7ca6baaea9ce"
EXISTS_VERSION = "4.0.0"

purescript_dep(
    name = "exists",
    sha256 = EXISTS_SHA,
    strip_prefix = "purescript-exists-{}".format(EXISTS_VERSION),
    url = "https://github.com/purescript/purescript-exists/archive/v{}.tar.gz".format(
        EXISTS_VERSION,
    ),
)

FOLDABLE_TRAVERSABLE_SHA = "c13f9de430673b25550d28ecdc4618dc2978dc9c182e39af29b5f94f09d43b11"
FOLDABLE_TRAVERSABLE_VERSION = "4.0.0"

purescript_dep(
    name = "foldable_traversable",
    sha256 = FOLDABLE_TRAVERSABLE_SHA,
    strip_prefix = "purescript-foldable-traversable-{}".format(FOLDABLE_TRAVERSABLE_VERSION),
    url = "https://github.com/purescript/purescript-foldable-traversable/archive/v{}.tar.gz".format(
        FOLDABLE_TRAVERSABLE_VERSION,
    ),
)

FREE_SHA = "d431eb82760ef6afb934394326697934b61095dbe3d91e4a167d5b49ad21ec50"
FREE_VERSION = "5.1.0"

purescript_dep(
    name = "free",
    sha256 = FREE_SHA,
    strip_prefix = "purescript-free-{}".format(FREE_VERSION),
    url = "https://github.com/purescript/purescript-free/archive/v{}.tar.gz".format(
        FREE_VERSION,
    ),
)

FUNCTIONS_SHA = "67a90cb69a0b28662eb4fe3a9813ea39239efabc216412d8022646ded035878e"
FUNCTIONS_VERSION = "4.0.0"

purescript_dep(
    name = "functions",
    sha256 = FUNCTIONS_SHA,
    strip_prefix = "purescript-functions-{}".format(FUNCTIONS_VERSION),
    url = "https://github.com/purescript/purescript-functions/archive/v{}.tar.gz".format(
        FUNCTIONS_VERSION,
    ),
)

FUNCTORS_SHA = "ffbeea9a26523c6324dd89671849a4c62b29932fc82ae7d832e95d411335d55e"
FUNCTORS_VERSION = "3.0.1"

purescript_dep(
    name = "functors",
    sha256 = FUNCTORS_SHA,
    strip_prefix = "purescript-functors-{}".format(FUNCTORS_VERSION),
    url = "https://github.com/purescript/purescript-functors/archive/v{}.tar.gz".format(
        FUNCTORS_VERSION,
    ),
)

GEN_SHA = "e44578486731e25b55d985941effab96aceee3525b34066a58016fe302167743"
GEN_VERSION = "2.1.0"

purescript_dep(
    name = "gen",
    sha256 = GEN_SHA,
    strip_prefix = "purescript-gen-{}".format(GEN_VERSION),
    url = "https://github.com/purescript/purescript-gen/archive/v{}.tar.gz".format(
        GEN_VERSION,
    ),
)

GENERICS_REP_SHA = "a44a9755b4608f0166f248f7966f628cace48e888cb952a38f67219e1dbeea54"
GENERICS_REP_VERSION = "6.0.0"

purescript_dep(
    name = "generics_rep",
    sha256 = GENERICS_REP_SHA,
    strip_prefix = "purescript-generics-rep-{}".format(GENERICS_REP_VERSION),
    url = "https://github.com/purescript/purescript-generics-rep/archive/v{}.tar.gz".format(
        GENERICS_REP_VERSION,
    ),
)

GLOBALS_SHA = "3d0ccec364e6366676cb4e8f7b55b004b191949657fa4fbce2220efa09409117"
GLOBALS_VERSION = "4.0.0"

purescript_dep(
    name = "globals",
    sha256 = GLOBALS_SHA,
    strip_prefix = "purescript-globals-{}".format(GLOBALS_VERSION),
    url = "https://github.com/purescript/purescript-globals/archive/v{}.tar.gz".format(
        GLOBALS_VERSION,
    ),
)

IDENTITY_SHA = "ec3ab8c2fece8349a97c70ea0385988a92f2fb90d97d1068987c59ddc2512784"
IDENTITY_VERSION = "4.0.0"

purescript_dep(
    name = "identity",
    sha256 = IDENTITY_SHA,
    strip_prefix = "purescript-identity-{}".format(IDENTITY_VERSION),
    url = "https://github.com/purescript/purescript-identity/archive/v{}.tar.gz".format(
        IDENTITY_VERSION,
    ),
)

INTEGERS_SHA = "8bb9831fd29a3c410ba778601f309c8844faee3a25af21e6a9c982868d7adfe2"
INTEGERS_VERSION = "4.0.0"

purescript_dep(
    name = "integers",
    sha256 = INTEGERS_SHA,
    strip_prefix = "purescript-integers-{}".format(INTEGERS_VERSION),
    url = "https://github.com/purescript/purescript-integers/archive/v{}.tar.gz".format(
        INTEGERS_VERSION,
    ),
)

INVARIANT_SHA = "95de1f34dd1f4a75a924c916beadb72e203df16efa2c0bbb01becd99fa711690"
INVARIANT_VERSION = "4.1.0"

purescript_dep(
    name = "invariant",
    sha256 = INVARIANT_SHA,
    strip_prefix = "purescript-invariant-{}".format(INVARIANT_VERSION),
    url = "https://github.com/purescript/purescript-invariant/archive/v{}.tar.gz".format(
        INVARIANT_VERSION,
    ),
)

LAZY_SHA = "612d118b70d3963a7153828f20476bb8aa2874643c0765b69364aca133409cb3"
LAZY_VERSION = "4.0.0"

purescript_dep(
    name = "lazy",
    sha256 = LAZY_SHA,
    strip_prefix = "purescript-lazy-{}".format(LAZY_VERSION),
    url = "https://github.com/purescript/purescript-lazy/archive/v{}.tar.gz".format(
        LAZY_VERSION,
    ),
)

LISTS_SHA = "c811bbd4f19a0bf990dd82cc9abb2152b5208425ad48a775e78aa5e663491a18"
LISTS_VERSION = "5.2.0"

purescript_dep(
    name = "lists",
    sha256 = LISTS_SHA,
    strip_prefix = "purescript-lists-{}".format(LISTS_VERSION),
    url = "https://github.com/purescript/purescript-lists/archive/v{}.tar.gz".format(
        LISTS_VERSION,
    ),
)

MATH_SHA = "dd702743b4e1d4251d3433a7238ce58d692ae9a31f16519cec77aadced901f20"
MATH_VERSION = "2.1.1"

purescript_dep(
    name = "math",
    sha256 = MATH_SHA,
    strip_prefix = "purescript-math-{}".format(MATH_VERSION),
    url = "https://github.com/purescript/purescript-math/archive/v{}.tar.gz".format(
        MATH_VERSION,
    ),
)

MAYBE_SHA = "0e59ffd29e8247881ddf2fbdb0deed52911a205108f0749de646872c0ba5b9b6"
MAYBE_VERSION = "4.0.0"

purescript_dep(
    name = "maybe",
    sha256 = MAYBE_SHA,
    strip_prefix = "purescript-maybe-{}".format(MAYBE_VERSION),
    url = "https://github.com/purescript/purescript-maybe/archive/v{}.tar.gz".format(
        MAYBE_VERSION,
    ),
)

MMORPH_SHA = "6cc35ea09c353d227533fc60a352485f0e75ee4395c8a7bfaef32c198bc15dd7"
MMORPH_VERSION = "5.0.0"

purescript_dep(
    name = "mmorph",
    sha256 = MMORPH_SHA,
    strip_prefix = "purescript-mmorph-{}".format(MMORPH_VERSION),
    url = "https://github.com/Thimoteus/purescript-mmorph/archive/v{}.tar.gz".format(
        MMORPH_VERSION,
    ),
)

NEWTYPE_SHA = "68e4b39f225449723153bbd148c57509a38dfb3eace4d18b31e0c7675e85f85b"
NEWTYPE_VERSION = "3.0.0"

purescript_dep(
    name = "newtype",
    sha256 = NEWTYPE_SHA,
    strip_prefix = "purescript-newtype-{}".format(NEWTYPE_VERSION),
    url = "https://github.com/purescript/purescript-newtype/archive/v{}.tar.gz".format(
        NEWTYPE_VERSION,
    ),
)

NONEMPTY_SHA = "96539fa3e3b036d276b7c7e3fa23396ea64dc56db8e2f0a03daa2d6260201f3d"
NONEMPTY_VERSION = "5.0.0"

purescript_dep(
    name = "nonempty",
    sha256 = NONEMPTY_SHA,
    strip_prefix = "purescript-nonempty-{}".format(NONEMPTY_VERSION),
    url = "https://github.com/purescript/purescript-nonempty/archive/v{}.tar.gz".format(
        NONEMPTY_VERSION,
    ),
)

ORDERED_COLLECTIONS_SHA = "2a6afc5f34049745e2f457726ed3c571fa76f2b4303ec61bc6e3eb51564473dd"
ORDERED_COLLECTIONS_VERSION = "1.0.0"

purescript_dep(
    name = "ordered_collections",
    sha256 = ORDERED_COLLECTIONS_SHA,
    strip_prefix = "purescript-ordered-collections-{}".format(ORDERED_COLLECTIONS_VERSION),
    url = "https://github.com/purescript/purescript-ordered-collections/archive/v{}.tar.gz".format(
        ORDERED_COLLECTIONS_VERSION,
    ),
)

ORDERS_SHA = "7e4e4da219ee924b72732ef5797f34b98e76605da70993eca1e4a3cfe8393a5b"
ORDERS_VERSION = "4.0.0"

purescript_dep(
    name = "orders",
    sha256 = ORDERS_SHA,
    strip_prefix = "purescript-orders-{}".format(ORDERS_VERSION),
    url = "https://github.com/purescript/purescript-orders/archive/v{}.tar.gz".format(
        ORDERS_VERSION,
    ),
)

PARALLEL_SHA = "95498bea242db97436f4d39e218afd94d4c85b1a39d82bbdc798826cd51c1bcd"
PARALLEL_VERSION = "4.0.0"

purescript_dep(
    name = "parallel",
    sha256 = PARALLEL_SHA,
    strip_prefix = "purescript-parallel-{}".format(PARALLEL_VERSION),
    url = "https://github.com/purescript/purescript-parallel/archive/v{}.tar.gz".format(
        PARALLEL_VERSION,
    ),
)

PARTIAL_SHA = "035aad65900a49fd79f94e9919b584f676aa5ba89e98426ca13d70f486ce0d6f"
PARTIAL_VERSION = "2.0.0"

purescript_dep(
    name = "partial",
    sha256 = PARTIAL_SHA,
    strip_prefix = "purescript-partial-{}".format(PARTIAL_VERSION),
    url = "https://github.com/purescript/purescript-partial/archive/v{}.tar.gz".format(
        PARTIAL_VERSION,
    ),
)

PIPES_SHA = "c913708488b1d7ff1b3ff161edcc6353c6fa33e28a5d77672ae2cd6e64d97f58"
PIPES_VERSION = "6.0.0"

purescript_dep(
    name = "pipes",
    sha256 = PIPES_SHA,
    strip_prefix = "purescript-pipes-{}".format(PIPES_VERSION),
    url = "https://github.com/felixSchl/purescript-pipes/archive/v{}.tar.gz".format(
        PIPES_VERSION,
    ),
)

PRELUDE_SHA = "116b4183a7dba545d36fe83e1ac63ec84353887318030fea3639002989e09761"
PRELUDE_VERSION = "4.1.0"

purescript_dep(
    name = "prelude",
    sha256 = PRELUDE_SHA,
    strip_prefix = "purescript-prelude-{}".format(PRELUDE_VERSION),
    url = "https://github.com/purescript/purescript-prelude/archive/v{}.tar.gz".format(
        PRELUDE_VERSION,
    ),
)

PROXY_SHA = "378d86ad363e2587af88995eea8860c7d2d7792f976d2245b5cca3cca7e63ff5"
PROXY_VERSION = "3.0.0"

purescript_dep(
    name = "proxy",
    sha256 = PROXY_SHA,
    strip_prefix = "purescript-proxy-{}".format(PROXY_VERSION),
    url = "https://github.com/purescript/purescript-proxy/archive/v{}.tar.gz".format(
        PROXY_VERSION,
    ),
)

REFS_SHA = "7518f435d9a60f2ced834f307dcb5a51f9e779a335c3159e89fcd466fb76fd90"
REFS_VERSION = "4.0.0"

purescript_dep(
    name = "refs",
    sha256 = REFS_SHA,
    strip_prefix = "purescript-refs-{}".format(REFS_VERSION),
    url = "https://github.com/purescript/purescript-refs/archive/v{}.tar.gz".format(
        REFS_VERSION,
    ),
)

RUN_SHA = "1178070d9c507e9e757fd3c428d7f4d0a52087064c7e01feab66ec16d942af6d"
RUN_VERSION = "2.0.0"

purescript_dep(
    name = "run",
    sha256 = RUN_SHA,
    strip_prefix = "purescript-run-{}".format(RUN_VERSION),
    url = "https://github.com/natefaubion/purescript-run/archive/v{}.tar.gz".format(
        RUN_VERSION,
    ),
)

SPEC_SHA = "ac2fc20402d6fb0463b5d31a99190e9f4ed43eea3023af9f5946fb1ab6d56859"
SPEC_VERSION = "3.0.0"

purescript_dep(
    name = "spec",
    sha256 = SPEC_SHA,
    strip_prefix = "purescript-spec-{}".format(SPEC_VERSION),
    url = "https://github.com/owickstrom/purescript-spec/archive/v{}.tar.gz".format(
        SPEC_VERSION,
    ),
)

ST_SHA = "3af993bece18fea74515e27f76b6e5d472772d7a3e715fe2e6f186a5756537c3"
ST_VERSION = "4.0.0"

purescript_dep(
    name = "st",
    sha256 = ST_SHA,
    strip_prefix = "purescript-st-{}".format(ST_VERSION),
    url = "https://github.com/purescript/purescript-st/archive/v{}.tar.gz".format(
        ST_VERSION,
    ),
)

STRINGS_SHA = "7699bdfc377820fe025c7c2e822e7d2658d485e629211510edcc0b2d0ce85b4e"
STRINGS_VERSION = "4.0.0"

purescript_dep(
    name = "strings",
    sha256 = STRINGS_SHA,
    strip_prefix = "purescript-strings-{}".format(STRINGS_VERSION),
    url = "https://github.com/purescript/purescript-strings/archive/v{}.tar.gz".format(
        STRINGS_VERSION,
    ),
)

TAILREC_SHA = "a96dd7657070a18b85c05b82e4d8d34b9d615926827dcc245444985e56cc06c2"
TAILREC_VERSION = "4.0.0"

purescript_dep(
    name = "tailrec",
    sha256 = TAILREC_SHA,
    strip_prefix = "purescript-tailrec-{}".format(TAILREC_VERSION),
    url = "https://github.com/purescript/purescript-tailrec/archive/v{}.tar.gz".format(
        TAILREC_VERSION,
    ),
)

TRANSFORMERS_SHA = "aff3207db583b792f3b7f53f4cf3f4226714537c71110939d65a25a87de4fa2a"
TRANSFORMERS_VERSION = "4.0.0"

purescript_dep(
    name = "transformers",
    sha256 = TRANSFORMERS_SHA,
    strip_prefix = "purescript-transformers-{}".format(TRANSFORMERS_VERSION),
    url = "https://github.com/purescript/purescript-transformers/archive/v{}.tar.gz".format(
        TRANSFORMERS_VERSION,
    ),
)

TUPLES_SHA = "6799e162fc514ed17432ee102fb607452ee528382975fb2455c9380a834bf2c9"
TUPLES_VERSION = "5.0.0"

purescript_dep(
    name = "tuples",
    sha256 = TUPLES_SHA,
    strip_prefix = "purescript-tuples-{}".format(TUPLES_VERSION),
    url = "https://github.com/purescript/purescript-tuples/archive/v{}.tar.gz".format(
        TUPLES_VERSION,
    ),
)

TYPE_EQUALITY_SHA = "5d1ab8031e09e60a8c3cbcd369f609ef2c3ff517fd01886daaf2b1611c71dddd"
TYPE_EQUALITY_VERSION = "3.0.0"

purescript_dep(
    name = "type_equality",
    sha256 = TYPE_EQUALITY_SHA,
    strip_prefix = "purescript-type-equality-{}".format(TYPE_EQUALITY_VERSION),
    url = "https://github.com/purescript/purescript-type-equality/archive/v{}.tar.gz".format(
        TYPE_EQUALITY_VERSION,
    ),
)

TYPELEVEL_PRELUDE_SHA = "d207b02aad7a8bc0b7a9e5ba5be2abd93430fd94db9595a491e93163751d1039"
TYPELEVEL_PRELUDE_VERSION = "3.0.0"

purescript_dep(
    name = "typelevel_prelude",
    sha256 = TYPELEVEL_PRELUDE_SHA,
    strip_prefix = "purescript-typelevel-prelude-{}".format(TYPELEVEL_PRELUDE_VERSION),
    url = "https://github.com/purescript/purescript-typelevel-prelude/archive/v{}.tar.gz".format(
        TYPELEVEL_PRELUDE_VERSION,
    ),
)

UNFOLDABLE_SHA = "76ebb6a79b51ecc29516aee5cd719d74542439825a852fa1654cd4fb0b38329c"
UNFOLDABLE_VERSION = "4.0.0"

purescript_dep(
    name = "unfoldable",
    sha256 = UNFOLDABLE_SHA,
    strip_prefix = "purescript-unfoldable-{}".format(UNFOLDABLE_VERSION),
    url = "https://github.com/purescript/purescript-unfoldable/archive/v{}.tar.gz".format(
        UNFOLDABLE_VERSION,
    ),
)

UNSAFE_COERCE_SHA = "6386620a5cbd9724e497ee7c2d5ce0fb0b813014be779329905acdff5f9b368a"
UNSAFE_COERCE_VERSION = "4.0.0"

purescript_dep(
    name = "unsafe_coerce",
    sha256 = UNSAFE_COERCE_SHA,
    strip_prefix = "purescript-unsafe-coerce-{}".format(UNSAFE_COERCE_VERSION),
    url = "https://github.com/purescript/purescript-unsafe-coerce/archive/v{}.tar.gz".format(
        UNSAFE_COERCE_VERSION,
    ),
)

VARIANT_SHA = "3ba0b6bd8661792b50a37e8210ce289582a8c40524fc5013fa9d75f5ad92a8ae"
VARIANT_VERSION = "5.0.0"

purescript_dep(
    name = "variant",
    sha256 = VARIANT_SHA,
    strip_prefix = "purescript-variant-{}".format(VARIANT_VERSION),
    url = "https://github.com/natefaubion/purescript-variant/archive/v{}.tar.gz".format(
        VARIANT_VERSION,
    ),
)
