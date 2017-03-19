#!/usr/bin/env bash

apt-get update

apt-get install -y sbcl

apt-get install -y rlwrap

curl https://beta.quicklisp.org/quicklisp.lisp > /tmp/quicklisp.lisp
