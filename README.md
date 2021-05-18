# Bare-metal Prometheus Setup

1) To start getting metrics from a set of nodes, execute this on every node
```bash
curl -o- https://raw.githubusercontent.com/JayjeetAtGithub/prometheus-on-baremetal/master/exporter.sh | bash
```

2) To start prometheus on the admin node,
```bash
# place the `config.yml` file in `/`
curl -o- https://raw.githubusercontent.com/JayjeetAtGithub/prometheus-on-baremetal/master/prometheus.sh | bash
```

3) To start Grafana server,
```bash
docker run -d -p 3000:3000 grafana/grafana
```

4) After starting the Grafana server, import the provided [grafana.json](./grafana.json) to get a pre-defined dashboard to monitor CPU, Storage and Network usage across the cluster.
