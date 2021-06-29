// NOTE(dwtj): I haven't figured out why I can't just `@import pt_rs_lib`.
//  If I understand [this] (https://github.com/bazelbuild/bazel/issues/9429)
//  Bazel issue correctly, maybe Bazel just doesn't support using the `@import`
//  syntax when pointing to `objc_library` targets.
// TODO(dwtj): Figure out how to use this module `@import`:
// @import pt_rs_lib
#import "pt/rs/lib.h"

int main(int argc, const char * argv[]) {
    say_hello_with_rust();
    return 0;
}
