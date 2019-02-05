log_level = "DEBUG"
bind_addr = "192.168.0.51"
data_dir = "/opt/nomad/"


client {
    enabled = true
    network_interface = "eth1"
    server_join {
        retry_join = [ "192.168.0.50"]
        retry_max = 3
        retry_interval = "15s"
    }
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