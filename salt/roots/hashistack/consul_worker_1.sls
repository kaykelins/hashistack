user_consul:
    user.present:
        - name: consul
        - shell: /bin/false
        - home: /etc/consul.d
        - system: true
    
    file.managed:
        - name: /usr/local/bin/consul
        - source: salt://apps/consul
        - user: root
        - group: root
        - mode: 755

config_consul_dir:
    file.directory:
        - name: /etc/consul.d
        - user: consul
        - group: consul

config_consul_file:
    file.managed:
        - name: /etc/consul.d/consul.hcl
        - source: salt://configs/consul_worker_1.hcl
        - user: consul
        - group: consul
        - mode: 640

data_consul_dir:
    file.directory:
        - name: /opt/consul
        - user: consul
        - group: consul

service_consul:
    file.managed:
        - name: /etc/systemd/system/consul.service
        - source: salt://services/consul.service
    
    service.running:
        - name: consul
        - enable: True