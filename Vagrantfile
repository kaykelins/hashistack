Vagrant.configure("2") do |config|

   config.vm.define "node1" do |node1|
      node1.vm.hostname = "server"
      node1.vm.box = "centos/7"
      node1.vm.network "public_network", bridge: "wlp1s0", ip: "192.168.0.50"   
   end

   config.vm.define "node2" do |node2|
      node2.vm.hostname = "worker1"
      node2.vm.box = "centos/7"
      node2.vm.network "public_network", bridge: "wlp1s0", ip: "192.168.0.51"   
   end

   config.vm.define "node3" do |node3|
      node3.vm.hostname = "worker2"
      node3.vm.box = "centos/7"
      node3.vm.network "public_network", bridge: "wlp1s0", ip: "192.168.0.52"   
   end
   
   config.vm.provision "salt" do |salt|
      salt.masterless = true
      salt.minion_config = "salt/minion"
      salt.run_highstate = true
      salt.install_type = "stable"
      salt.verbose = true
      salt.colorize = true
   end
   
   config.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
   end

end

