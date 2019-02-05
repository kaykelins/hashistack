datacenter = "dc1"
data_dir = "/opt/consul/"
server = false
ui = true
advertise_addr = "192.168.0.51"
node_name = "worker_1"
enable_local_script_checks = true
#client_addr = "192.168.0.50"
retry_join = ["192.168.0.50"]
#acl {
#  enabled = true
#  default_policy = "deny"
#  down_policy = "extend-cache"
#}
