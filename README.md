# A little bit of FFI for LWP2017

## Usage

This should work with Macs and Linux based environments. Also for perl FFI binding I'm using `FFI::Raw` module rather than xs.

- Install rust using rustup, accept the defaults and follow instructions: `curl https://sh.rustup.rs -sSf | sh`
- Clone the repo `git clone git@github.com:booyaa/hello_perl.git`
- Go to the `hello_perl` directory
- Build `cargo build`
- Test code using perl script: `src/main.pl`