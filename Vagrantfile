# -*- mode: ruby -*-
# vi: set ft=ruby :
# vi: set tabstop=2 :
# vi: set shiftwidth=2 :

Vagrant.configure("2") do |config|

  vms = [
    [ "debian-jessie-php5-legacy", "debian/jessie64" ],
    [ "debian-jessie-php5", "debian/jessie64" ],
    [ "debian-jessie-php7", "debian/jessie64" ]
  ]

	ansible_groups = {
		"php5" => [ "debian-jessie-php5-legacy", "debian-jessie-php5" ],
		"php7" => [ "debian-jessie-php7" ],
		"phalcon2" => [ "debian-jessie-php5-legacy" ],
		"phalcon3" => [ "debian-jessie-php5", "debian-jessie-php7" ],
		"jessie" => [ "debian-jessie-php5-legacy", "debian-jessie-php5", "debian-jessie-php7" ]
	}

  config.vm.provider "virtualbox" do |v|
    v.cpus = 1
    v.memory = 256
  end

  vms.each do |vm|
    config.vm.define vm[0] do |m|
      m.vm.box = vm[1]
      m.vm.network "private_network", type: "dhcp"

      m.vm.provision "ansible" do |ansible|
        ansible.playbook = "tests/test.yml"
        ansible.groups = ansible_groups 
        ansible.verbose = 'vv'
        ansible.sudo = true
      end
    end
  end
end
