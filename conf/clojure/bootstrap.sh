#!/usr/bin/env bash

sudo apt-get update

sudo apt-get install -y default-jre

sudo curl https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein > /usr/local/bin/lein

sudo chmod a+x /usr/local/bin/lein
