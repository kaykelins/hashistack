log_level = "DEBUG"
bind_addr = "192.168.0.50"
data_dir = "/opt/nomad/"

server {
    enabled = true
    bootstrap_expect = 1
}

client {
    enabled = true
    network_interface = "eth1"
}

consul {
  address             = "192.168.0.50:8500"
  server_service_name = "nomad"
  client_service_name = "nomad-client"
  auto_advertise      = true
  server_auto_join    = true
  client_auto_join    = true
}

#acl {
#  enabled = true
#}