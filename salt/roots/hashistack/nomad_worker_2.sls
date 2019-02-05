nomad:
    user.present:
        - name: nomad
        - shell: /bin/false
        - home: /etc/nomad.d
        - system: true
        - groups:
            - docker
    
    file.managed:
        - name: /usr/local/bin/nomad
        - source: salt://apps/nomad
        - user: root
        - group: root
        - mode: 755

config_nomad_dir:
    file.directory:
        - name: /etc/nomad.d
        - user: nomad
        - group: nomad

config_nomad_file:
    file.managed:
        - name: /etc/nomad.d/nomad.hcl
        - source: salt://configs/nomad_worker_2.hcl
        - user: nomad
        - group: nomad
        - mode: 640

data_nomad_dir:
    file.directory:
        - name: /opt/nomad
        - user: nomad
        - group: nomad

service_nomad:
    file.managed:
        - name: /etc/systemd/system/nomad.service
        - source: salt://services/nomad.service
    
    service.running:
        - name: nomad
        - enable: True