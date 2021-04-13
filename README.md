# Bare-metal Prometheus Setup

1) To start getting metrics from a set of nodes, execute this on every node
```
curl -o- https://raw.githubusercontent.com/JayjeetAtGithub/prometheus-on-baremetal/master/start.sh | bash
```

2) To start prometheus,
```
nohup ./prometheus --config.file=config.yml &
```

3) To start Grafana,
```
docker run -d -p 3000:3000 grafana/grafana
```
