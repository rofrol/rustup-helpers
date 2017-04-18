#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

export PATH=~/.cargo/bin:$PATH

rustc_date_wanted="$1"
nightly_date_with_specific_rustc="$2"
rustc_version=`rustc --version`
rustc_date=`echo ${rustc_version} | tr -d '()' | awk '{print \$(NF)}'`
echo "rustc_date: $rustc_date"

if [ "$rustc_date" != "$rustc_date_wanted" ]; then
  rustup install "nightly-${nightly_date_with_specific_rustc}"
  rustup override set "nightly-${nightly_date_with_specific_rustc}"
fi
