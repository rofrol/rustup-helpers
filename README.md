# rustup-helpers

Scripts created as a workaround for:

- cargo hangs on Windows 7 https://github.com/rust-lang-nursery/rustup.rs/issues/1075
- sh: -y: No such file or directory https://github.com/rust-lang-nursery/rustup.rs/issues/1074
- Time drift between nigthly version and rustc version https://github.com/SergioBenitez/Rocket/pull/256

`./setup.sh` install Rust and `setup_specific_rust_nightly.sh` overrides rust version for directory.

Example usage in `example/` directory.

## Windows setup

### Install Visual C++ 2015 Build Tools

Go to http://landinghub.visualstudio.com/visual-cpp-build-tools and install Visual C++ 2015 Build Tools.

You need amin rights.

### Set env HOME to %USERPROFILE%

1. Press Windows Start, search for env, click.
2. Add new env with the name HOME.
3. Set value to %USERPROFILE%.
4. Restart you terminals.

### Set cert for curl when getting error: unknown ssl protocol error in connection

Open `git bash` and run:

`touch ~/.curlrc`

It will create file `%USERPROFILE\.curlrc`.

Then run:

`git config http.sslcainfo`

You will get some path like `C:/Users/someuser/path/to/file.crt`.

Edit file `~/.curlrc` and use path from `git config http.sslcainfo`:

`cacert /c/Users/someuser/path/to/file.crt`
