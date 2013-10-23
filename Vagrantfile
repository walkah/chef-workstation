# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "workstation"
  config.vm.box = "MacOSX10.9"

  config.vm.network :private_network, ip: "192.168.103.6"

  config.omnibus.chef_version = :latest

  config.berkshelf.enabled = true

  config.ssh.forward_agent = true

  config.vm.provider :vmware_fusion do |v|
    v.gui = true
    v.vmx["memsize"] = "2048"
    v.vmx["numvcpus"] = "4"
    v.vmx["displayName"] = "workstation"
    v.vmx["annotation"] = "Mac OS X Workstation"
  end

  config.vm.provision :chef_solo do |chef|
    chef.json = {
      :mysql => {
        :server_root_password => 'rootpass',
        :server_debian_password => 'debpass',
        :server_repl_password => 'replpass'
      },
      :user => {
        :id => 'vagrant'
      },
    }

    chef.run_list = [
      "recipe[workstation::default]"
    ]
  end
end
