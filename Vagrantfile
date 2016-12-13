
Vagrant.configure("2") do |config|
  config.ssh.insert_key = false
  config.vm.box = "centos-7.2" 
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", 1024]
  end
end
