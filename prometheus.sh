#!/bin/bash
set -eu

wget https://github.com/prometheus/prometheus/releases/download/v2.26.0/prometheus-2.26.0.linux-amd64.tar.gz
tar xvfz prometheus-*.*-amd64.tar.gz
cd prometheus-*.*-amd64

sudo cp prometheus /usr/bin

cat > /etc/systemd/system/prometheus.service <<EOF
[Unit]
Description=Prometheus
After=network.target
 
[Service]
Type=simple
ExecStart=/usr/bin/prometheus --config.file=/config.yml
 
[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload
sudo systemctl start prometheus
sudo systemctl enable prometheus
