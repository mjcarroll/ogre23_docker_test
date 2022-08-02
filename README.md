# gz-cmake and OGRE 2.3 integration testing

This is a simple scenario to test that gz-cmake does the right thing when various configurations of OGRE 2 are installed.

Test with:
```
# Build on jammy with only ogre 2.2 installed
make jammy-2.2

# Build on jammy with only ogre 2.3 installed
make jammy-2.3

# Build on jammy with both ogre2.2 and 2.3 installed
make jammy-both
```

The docker container will attempt to build three packages, ogre-2.1, ogre-2.2, and ogre-2.3.

Each of these has an explicit dependency on the version of ogre in the package name.
If that dependency is not found, the build should fail.
That is ogre-2.1 should not attempt to build with ogre-2.2, but rather fail at cmake configuration time.
