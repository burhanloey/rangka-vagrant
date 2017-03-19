#!/usr/bin/env bash

apt-get update

apt-get install -y sbcl

apt-get install -y rlwrap

curl https://beta.quicklisp.org/quicklisp.lisp > /tmp/quicklisp.lisp

cp /vagrant/conf/sbcl/myapp-start /usr/local/bin/

chmod a+x /usr/local/bin/myapp-start
