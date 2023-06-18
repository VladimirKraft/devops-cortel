output "vm" {
    value = [for host in vcd_vm.vm: ["hostname - ${host.computer_name}", "IP - ${host.network.0.ip}"]]
}