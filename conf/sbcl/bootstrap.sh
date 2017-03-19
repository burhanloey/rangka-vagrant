#!/usr/bin/env bash

sudo apt-get update

sudo apt-get install -y sbcl

sudo apt-get install -y rlwrap

sudo curl https://beta.quicklisp.org/quicklisp.lisp > /tmp/quicklisp.lisp
