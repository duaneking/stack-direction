# Stack Direction Detection

This is just Simple C code to detect the stack growth direction based on the address of the newly created stack frame value via a recrsive function execution to track the address space used by iterative stack values and find the growth direction of the stacks growth path.

# Why

The answer to this question is platform dependent, but this check is useful for platform specific code or for code that needs to run on multiple platforms.

It's also an interesting enough problem that I wanted to centralize the answer in code I had wrtitten for re-usability.

# How to use

This uses the standard Unix build system using standard Makefile files for ease of use.  There are no dependencies by design. A standard UNIX build system using GCC should be sufficient.

If you do not understand make files, I highly suggest you learn as they are the backbone of many build systems.

If all you want to do is run this once to detect your hardware, you can do an easy and simple transient build-and-run-and-clean loop by simply calling:

```
make transient
```

If your build system is working, it should do a clean, a full compile, then run the binary once before running make clean to remove all trace of it.

Note: On windows this expects the extention of .exe by design.
