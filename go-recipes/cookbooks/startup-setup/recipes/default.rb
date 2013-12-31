# install the necessary tools based on the environment

## startup_setup

script "startup_setup" do
  interpreter "bash"
  user "root"
  cwd "/home/vagrant"
  code <<-EOH
  echo "autologin-user=vagrant" >> /etc/lightdm/lightdm.conf
  echo "autologin-user-timeout=0" >> /etc/lightdm/lightdm.conf
  apt-get update
  EOH
end

