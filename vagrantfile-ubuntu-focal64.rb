# Versão do Vagrant que será utilizada
Vagrant.configure("2") do |config|

  # Selecionando o box que será utilizado
  config.vm.box = "ubuntu/focal64"

  # Definindo as configurações da máquina virtual 1
  config.vm.define "vm1" do |vm1|
    vm1.vm.hostname = "vm1"
    vm1.vm.network "public_network", bridge: "en0: Wi-Fi (AirPort)", auto_config: true
    vm1.vm.provider "virtualbox" do |vb|
      vb.memory = "1024" # Definindo a quantidade de RAM
      vb.cpus = 1 # Definindo o número de CPUs
    end
    # Provisão para instalação do Docker
    vm1.vm.provision "shell", inline: <<-SHELL
      apt-get update
      apt-get install -y docker.io
    SHELL
  end

  # Definindo as configurações da máquina virtual 2
  config.vm.define "vm2" do |vm2|
    vm2.vm.hostname = "vm2"
    vm2.vm.network "public_network", bridge: "en0: Wi-Fi (AirPort)", auto_config: true
    vm2.vm.provider "virtualbox" do |vb|
      vb.memory = "1024" # Definindo a quantidade de RAM
      vb.cpus = 1 # Definindo o número de CPUs
    end
    # Provisão para instalação do Docker
    vm2.vm.provision "shell", inline: <<-SHELL
      apt-get update
      apt-get install -y docker.io
    SHELL
  end

  # Definindo as configurações da máquina virtual 3
  config.vm.define "vm3" do |vm3|
    vm3.vm.hostname = "vm3"
    vm3.vm.network "public_network", bridge: "en0: Wi-Fi (AirPort)", auto_config: true
    vm3.vm.provider "virtualbox" do |vb|
      vb.memory = "1024" # Definindo a quantidade de RAM
      vb.cpus = 1 # Definindo o número de CPUs
    end
    # Provisão para instalação do Docker
    vm3.vm.provision "shell", inline: <<-SHELL
      apt-get update
      apt-get install -y docker.io
    SHELL
  end

  # Definindo as configurações da máquina virtual 4
  config.vm.define "vm4" do |vm4|
    vm4.vm.hostname = "vm4"
    vm4.vm.network "public_network", bridge: "en0: Wi-Fi (AirPort)", auto_config: true
    vm4.vm.provider "virtualbox" do |vb|
      vb.memory = "1024" # Definindo a quantidade de RAM
      vb.cpus = 1 # Definindo o número de CPUs
    end
    # Provisão para instalação do Docker
    vm4.vm.provision "shell", inline: <<-SHELL
      apt-get update
      apt-get install -y docker.io
    SHELL
  end
end
