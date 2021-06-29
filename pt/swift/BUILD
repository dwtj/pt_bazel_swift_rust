load(
    "@build_bazel_rules_swift//swift:swift.bzl",
    "swift_binary",
    "swift_library",
)

swift_binary(
    name = "bin",
    srcs = ["main.swift"],
    deps = [
        "//pt/rs:lib_objc",
    ],
)

swift_library(
    name = "lib",
    srcs = ["lib.swift"],
    visibility = ["//visibility:public"],
)
