load(
    "@rules_rust//rust:defs.bzl",
    "rust_binary",
    "rust_static_library",
)

rust_binary(
    name = "bin",
    srcs = ["main.rs"],
)

rust_static_library(
    name = "lib",
    srcs = ["lib.rs"],
    visibility = ["//visibility:public"],
)

cc_library(
    name = "lib_cc",
    hdrs = ["lib.h"],
    deps = ["lib"],
)

objc_library(
    name = "lib_objc",
    module_name = "pt_rs_lib",
    enable_modules = True,
    hdrs = ["lib.objc.h"],
    deps = ["//pt/rs:lib_cc"],
    visibility = ["//visibility:public"],
)
