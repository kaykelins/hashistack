datacenter = "dc1"
data_dir = "/opt/consul/"
server = true
bootstrap_expect = 1
ui = true
advertise_addr = "192.168.0.50"
node_name = "server_1"
enable_local_script_checks = true
client_addr = "192.168.0.50"
#acl {
#  enabled = true
#  default_policy = "deny"
#  down_policy = "extend-cache"
#}
