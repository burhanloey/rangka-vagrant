#!/usr/bin/env bash

apt-get update

apt-get install -y default-jre

curl https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein > /usr/local/bin/lein

chmod a+x /usr/local/bin/lein
