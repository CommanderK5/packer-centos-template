
Vagrant.configure("2") do |config|
  config.ssh.insert_key = false
  config.vm.box = "vagrant-centos-7.2.box" 
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", 1024]
  end
end
