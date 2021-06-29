apple_binary(
    name = "bin",
    deps = ["lib"],
    platform_type = "macos",
)

objc_library(
    name = "lib",
    srcs = ["main.m"],
    enable_modules = True,
    deps = ["//pt/rs:lib_objc"],
)
