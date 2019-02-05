base:
    '*':
        - common
    
    'server':
        - hashistack.nomad_server
        - hashistack.consul_server
    
    'worker1':
        - hashistack.nomad_worker_1
        - hashistack.consul_worker_1
    
    'worker2':
        - hashistack.nomad_worker_2
        - hashistack.consul_worker_2 