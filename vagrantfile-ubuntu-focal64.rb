Vagrant.configure("2") do |config|
  
  # Define a box a ser usada para as máquinas virtuais
  config.vm.box = "ubuntu/focal64"
  
  # Define a máquina "Master"
  config.vm.define "Master" do |master|
    master.vm.hostname = "Master"
    master.vm.network "private_network", ip: "192.168.50.10"
    master.vm.provision "shell", inline: <<-SHELL
      apt-get update
      apt-get install -y docker.io
      docker swarm init --advertise-addr 192.168.50.10
    SHELL
  end
  
  # Define a máquina "Node01"
  config.vm.define "Node01" do |node01|
    node01.vm.hostname = "Node01"
    node01.vm.network "private_network", ip: "192.168.50.11"
    node01.vm.provision "shell", inline: <<-SHELL
      apt-get update
      apt-get install -y docker.io
      docker swarm join --token <token> 192.168.50.10:2377
    SHELL
  end
  
  # Define a máquina "Node02"
  config.vm.define "Node02" do |node02|
    node02.vm.hostname = "Node02"
    node02.vm.network "private_network", ip: "192.168.50.12"
    node02.vm.provision "shell", inline: <<-SHELL
      apt-get update
      apt-get install -y docker.io
      docker swarm join --token <token> 192.168.50.10:2377
    SHELL
  end
  
  # Define a máquina "Node03"
  config.vm.define "Node03" do |node03|
    node03.vm.hostname = "Node03"
    node03.vm.network "private_network", ip: "192.168.50.13"
    node03.vm.provision "shell", inline: <<-SHELL
      apt-get update
      apt-get install -y docker.io
      docker swarm join --token <token> 192.168.50.10:2377
    SHELL
  end
  
end
