#!/bin/bash
set -eu

wget https://github.com/prometheus/prometheus/releases/download/v2.45.3/prometheus-2.45.3.linux-amd64.tar.gz
tar xvfz prometheus-*.*-amd64.tar.gz
cd prometheus-*.*-amd64

sudo cp prometheus /usr/bin

cat > /etc/systemd/system/prometheus.service <<EOF
[Unit]
Description=Prometheus
After=network.target
 
[Service]
Type=simple
ExecStart=/usr/bin/prometheus --config.file=/tmp/prometheus_config.yml
 
[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload
sudo systemctl start prometheus
sudo systemctl enable prometheus
