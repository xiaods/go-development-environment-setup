## go-setup

script "setup_go_code" do
  interpreter "bash"
  user "vagrant"       
  cwd "/home/vagrant"
  environment("HOME" => "/home/vagrant")
  code <<-EOH
  git clone https://go_builder_p:Jg0hxk56@blrstdscm01.thoughtworks.com/git/cruise.git
  cd cruise
  git submodule update --init --recursive
  printenv
  echo "User: $(id)"
  ./b clean prepare
  EOH
  only_if do ! File.exists?("/home/vagrant/cruise") end
end
