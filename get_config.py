import os
import yaml

if __name__ == "__main__":
    with open('hosts', 'r') as f:
        hosts = f.readlines()
    
    hosts = list(map(lambda x: x.rstrip() + ":9100", hosts))    
    with open('config.template.yml') as f:
        data = yaml.load(f, Loader=yaml.FullLoader)
    
    data['scrape_configs'][0]['static_configs'][0]['targets'] = [hosts[0]]
    data['scrape_configs'][1]['static_configs'][0]['targets'] = hosts[1:]

    with open('/tmp/config.yml', 'w') as f:
        yaml.dump(data, f, default_flow_style=False)
