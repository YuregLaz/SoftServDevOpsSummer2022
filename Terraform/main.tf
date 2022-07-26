terraform {
  required_providers {
    virtualbox = {
      source = "terra-farm/virtualbox"
      version = "0.2.2-alpha.1"
    }
  }
}



# There are currently no configuration options for the provider itself.

resource "virtualbox_vm" "node" {
    count = 2
    name = "${format("node-%02d", count.index+1)}"

    image = "https://app.vagrantup.com/ubuntu/boxes/xenial64/versions/20190507.0.0/providers/virtualbox.box"
	
    cpus = 2
    memory = "1024 mib"
   // user_data = "${file("user_data")}"

     network_adapter {
       type = "bridged"
       host_interface="Realtek RTL8821CE 802.11ac PCIe Adapter"

    }


}


output "IPAddr_1" {
value = element(virtualbox_vm.node.*.network_adapter.0.ipv4_address, 1)
}

output "IPAddr_2" {
value = element(virtualbox_vm.node.*.network_adapter.0.ipv4_address, 2)
}