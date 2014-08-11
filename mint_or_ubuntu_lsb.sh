#!/bin/bash

cat /etc/apt/sources.list /etc/apt/sources.list.d/*.list | egrep "http://[a-z\.]*archive.ubuntu.com/ubuntu" | sed -ne "s/^deb[^ ]*\s\+http[^ ]*\s\+\([a-z]\+\)\s\+main\s\+restricted.*$/\1/p" | sed -ne "1p"

