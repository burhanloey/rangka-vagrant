#!/usr/bin/sbcl --script

(load "/tmp/quicklisp.lisp")

(quicklisp-quickstart:install)

(ql-util:without-prompting
  (ql:add-to-init-file))
