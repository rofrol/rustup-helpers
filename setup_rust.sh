#!/bin/bash

# https://github.com/rust-lang-nursery/rustup.rs/issues/1075

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

export PATH=~/.cargo/bin:$PATH

log () {
  echo -e "\n[SETUP] ${1}\n"
}

function uninstall_rust() {
  log "uninstall_rust"
  rm -rf ~/.cargo ~/.rustup
}

function install_rust_official_method() {
  log "install_rust_official_method"
  curl https://sh.rustup.rs -sSf | sh -s -- -y
}

function backup_rust() {
  log "backup_rust"
  mkdir -p tmp && \
  cp -r ~/.cargo ~/.rustup tmp/
  ls -la tmp/
}

function install_rust_from_backup() {
  log "install_rust_from_backup"
  cp -r tmp/.cargo ~/
  cp -r tmp/.rustup ~/ && \
  rm -rf tmp
}

rm -rf tmp && \
uninstall_rust && \
install_rust_official_method && \
backup_rust && \
uninstall_rust && \
install_rust_from_backup
