#!/usr/bin/env bash

apt-get update

apt-get install -y nginx

cp /vagrant/conf/nginx/loadbalancer /etc/nginx/sites-available/

echo "Copied loadbalancer config file into /etc/nginx/sites-available/"

rm /etc/nginx/sites-enabled/default

echo "Removed default config symlink"

ln -s /etc/nginx/sites-available/loadbalancer /etc/nginx/sites-enabled/

echo "Created symlink for loadbalancer"

service nginx reload

echo "Reloaded nginx with new configuration"
