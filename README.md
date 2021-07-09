# Bare-metal Prometheus Setup

1) To start getting metrics from a set of nodes, execute this on every node
```bash
curl -o- https://raw.githubusercontent.com/JayjeetAtGithub/prometheus-on-baremetal/master/exporter.sh | bash
```

2) Write the host names in the `hosts` file and generate the prometheus config file in `/tmp` by doing,
```bash
git clone https://github.com/JayjeetAtGithub/prometheus-on-baremetal
cd prometheus-on-baremetal/
python3 get_config.py
```

2) To start prometheus on the admin node,
```bash
curl -o- https://raw.githubusercontent.com/JayjeetAtGithub/prometheus-on-baremetal/master/prometheus.sh | bash
```

3) To start Grafana server,
```bash
curl -o- https://get.docker.com | bash
docker run -d -p 3000:3000 grafana/grafana
```

4) After starting the Grafana server, add a prometheus data source named `skyhook` and then import the provided [grafana.json](./grafana.json) to get a pre-defined dashboard to monitor CPU, Storage and Network usage across the cluster.
