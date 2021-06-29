workspace(name = "pt_bazel_swift_rust")

_RULES_RUST_SHA256 = "a4f01ecab8dd1252ce9b519b09ae20eb39f25e1bd7113fb6068a5aad03276289"
_RULES_RUST_COMMIT = "ca6043b6c60664fd18e1608be09fd32144561212"

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

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
