#!/bin/bash
set -eu

wget https://github.com/prometheus/node_exporter/releases/download/v1.1.2/node_exporter-1.1.2.linux-amd64.tar.gztar xvfz node_exporter-*.*-amd64.tar.gz
tar xvfz node_exporter-*.*-amd64.tar.gz
cd node_exporter-*.*-amd64

sudo ln -s node_exporter /usr/bin

cat > /etc/init/node_exporter.conf <<EOF
start on startup

script
   /usr/bin/node_exporter
end script
EOF

sudo service node_exporter start
