workspace(name = "pt_bazel_swift_rust")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# CONFIGURE `@rules_rust` #####################################################

_RULES_RUST_SHA256 = "a4f01ecab8dd1252ce9b519b09ae20eb39f25e1bd7113fb6068a5aad03276289"
_RULES_RUST_COMMIT = "ca6043b6c60664fd18e1608be09fd32144561212"

http_archive(
    name = "rules_rust",
    url = "https://github.com/bazelbuild/rules_rust/archive/{}.tar.gz".format(_RULES_RUST_COMMIT),
    strip_prefix = "rules_rust-{}".format(_RULES_RUST_COMMIT),
    sha256 = _RULES_RUST_SHA256,
)

load("@rules_rust//rust:repositories.bzl", "rust_repositories")

rust_repositories(
    version = "1.53.0",
    edition = "2018",
)

# CONFIGURE `@rules_swift` ####################################################

_RULES_SWIFT_COMMIT = "618151af28d1aaf04612e75c142f4b48961d5012"
_RULES_SWIFT_SHA256 = "8aae972cda2c2299885fdc63ae49772bdaa36ccf3be8a6a8ea4045f4ff97000c"

http_archive(
    name = "build_bazel_rules_swift",
    sha256 = _RULES_SWIFT_SHA256,
    strip_prefix = "rules_swift-{}".format(_RULES_SWIFT_COMMIT),
    url = "https://github.com/bazelbuild/rules_swift/archive/{}.tar.gz".format(_RULES_SWIFT_COMMIT),
)

load(
    "@build_bazel_rules_swift//swift:repositories.bzl",
    "swift_rules_dependencies",
)

swift_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:extras.bzl",
    "swift_rules_extra_dependencies",
)

swift_rules_extra_dependencies()
