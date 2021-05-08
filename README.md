# Bare-metal Prometheus Setup

1) To start getting metrics from a set of nodes, execute this on every node
```
curl -o- https://raw.githubusercontent.com/JayjeetAtGithub/prometheus-on-baremetal/master/exporter.sh | bash
```

2) To start prometheus,
```
curl -o- https://raw.githubusercontent.com/JayjeetAtGithub/prometheus-on-baremetal/master/prometheus.sh | bash
```

3) To start Grafana,
```
docker run -d -p 3000:3000 grafana/grafana
```
