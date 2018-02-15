### Cross-compiling Hello World 

1. Build

For bazel versions < 1.10:

```bash
$ bazel build --experimental_platforms=@io_bazel_rules_go//go/toolchain:linux_ppc64le //:hello
```

For bazel 1.10 > 

```bash
$ bazel build --platforms=@io_bazel_rules_go//go/toolchain:linux_ppc64le //:hello
```

2. Verify

```bash
$ readelf -h bazel-bin/hello
```
