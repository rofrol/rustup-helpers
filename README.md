# rustup-helpers

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
