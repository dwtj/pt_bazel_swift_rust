# Prototype: Integrating Rust and Swift into a Bazel Workspace

This project demonstrates how Rust and Swift can be used together in a Bazel
workspace.

This was accomplished by

- Defining a `rust_static_library` target
- Wrapping it in a `cc_library`.
- Then wrapping this in an `objc_library`.
- This `objc_library` can then be used directly as a dependency of a
	`swift_binary` (or similar) target.

Additionally, the `//pt/objc` package demonstrates how to use this
`objc_library` wrapper of Rust code from an Objective-C-implemented
`apple_binary` target.
