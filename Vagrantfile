# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "precise64"  
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.network :forwarded_port, guest: 8153, host: 8153
  config.vm.network :forwarded_port, guest: 8154, host: 8154
  config.vm.network :public_network

  # config.vm.synced_folder "../data", "/vagrant_data"

  config.vm.provider :virtualbox do |vb|
    vb.gui = ENV["HEADLESS"] != "true"

    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["./go-recipes/cookbooks"]
    chef.verbose_logging = true
    #   chef.roles_path = "../my-recipes/roles"
    #   chef.data_bags_path = "../my-recipes/data_bags"
 
    chef.add_recipe "startup-setup"

    chef.add_recipe "git"
    #   chef.add_recipe "mercurial"
    chef.add_recipe "subversion"

    chef.add_recipe "java"

    chef.add_recipe "ruby-cookbook"
    chef.add_recipe "opscode-chef-cookbook-sass"
    chef.add_recipe "chef-recipe-rake"
    
    chef.add_recipe "go-setup"
    #   chef.add_role "web"
  
    chef.json = {
      'java' => {
        'install_flavor' => 'openjdk',
	'jdk_version' => '7'
      }
    }
  end
end
