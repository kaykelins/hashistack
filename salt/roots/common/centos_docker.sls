install_docker:
    cmd.run:
        - name: yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
  
    pkg.installed:
        - pkgs:
            - device-mapper-persistent-data
            - lvm2
            - yum-utils
            - docker-ce
    
    service.running:
        - name: docker
        - enable: True
