# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

memory_to_use = ENV["MEMORY"] || (ENV["TO_RUN_WITH_WINDOW_MANAGER"] == "true" ? "4096" : "2048")
puts "Will use #{memory_to_use}MB of RAM for the virtual machine."

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.network :forwarded_port, guest: 8153, host: 8153
  config.vm.network :forwarded_port, guest: 8154, host: 8154
  config.vm.network :public_network

  # config.vm.synced_folder "../data", "/vagrant_data"

  config.vm.provider :virtualbox do |vb|
    vb.gui = ENV["HEADLESS"] != "true"
    vb.customize ["modifyvm", :id, "--memory", memory_to_use]
  end

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["./scripts/go-recipes/cookbooks"]
    chef.verbose_logging = true

    chef.add_recipe "apt-update"

    chef.add_recipe "chef-zip"

    chef.add_recipe "git"
    # chef.add_recipe "mercurial"
    chef.add_recipe "subversion"

    chef.add_recipe "java"

    chef.add_recipe "ruby-cookbook"
    chef.add_recipe "opscode-chef-cookbook-sass"
    chef.add_recipe "chef-recipe-rake"

    chef.add_recipe "intellij" if ENV["TO_RUN_WITH_WINDOW_MANAGER"] == "true"
    chef.add_recipe "gnome" if ENV["TO_RUN_WITH_WINDOW_MANAGER"] == "true"
    chef.add_recipe "startup-setup" if ENV["TO_RUN_WITH_WINDOW_MANAGER"] == "true"

    chef.add_recipe "go-setup"

    chef.json = {
      'java' => {
        'install_flavor' => 'openjdk',
        'jdk_version' => '7'
      }
    }
  end
end
