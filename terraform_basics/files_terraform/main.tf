locals {
  instance_count = {
    prod = 2
    stage = 1
  }
  instance_hdd_size = {
    prod = 20480
    stage = 10240
  }
  instance_start_adress = {
    prod = "192.168.0.2"
    stage = "192.168.0.65"
  }
  instance_end_adress = {
    prod = "192.168.0.62"
    stage = "192.168.0.126"
  }
  instance_name_subnet = {
    prod = "prod_net"
    stage = "stage_net"
  }
  instance_ram = {
    prod = "3096"
    stage = "2048"
  }
  instance_cpu = {
    prod = "2"
    stage = "1"
  }
  instance_iniscript = {
    prod = <<EOF
  #!/bin/bash
  growpart /dev/sda 3 #increase dev sda3
  lvextend -l +100%FREE /dev/ubuntu-vg/ubuntu-lv #increase lvm
  EOF
    stage = <<EOF
  EOF
  }
}


data "vcd_catalog" "my-tmpl-cat" {
    org  = var.vcd_org
    name = var.vcd_org_catalog
}

data "vcd_catalog_vapp_template" "vappTmpl" {
  org        = var.vcd_org
  catalog_id = data.vcd_catalog.my-tmpl-cat.id
  name       = var.vcd_template_os
}

resource "vcd_vm" "vm" {
  count            = local.instance_count[terraform.workspace]
  name             = "${terraform.workspace}-${count.index+1}"
  computer_name = "${terraform.workspace}-${count.index+1}"
  vapp_template_id = data.vcd_catalog_vapp_template.vappTmpl.id 
  depends_on       = [ vcd_network_isolated.net ]
  power_on         = var.power_on
  memory           = local.instance_ram[terraform.workspace]
  cpu_cores        = local.instance_cpu[terraform.workspace]
  

  customization {
    enabled                    = true
    auto_generate_password     = false
    allow_local_admin_password = true
    admin_password             = "password"
    initscript                 = local.instance_iniscript[terraform.workspace]
  }

  network {
    type = "org"
    name = local.instance_name_subnet[terraform.workspace]
    ip_allocation_mode = "POOL"
  }

  override_template_disk {
    bus_type        = "parallel"
    size_in_mb      = local.instance_hdd_size[terraform.workspace]
    bus_number      = 0
    unit_number     = 0
    iops            = 0
  }

  #guest_properties = {
  #  "local-hostname"  = "${terraform.workspace} - ${count.index + 1}"
  #  "user-data"       = base64encode(file("${path.module}/userdata.yaml"))
  #}

}

resource "vcd_network_isolated" "net" {
  org             = var.vcd_org
  vdc             = var.vcd_org_vdc
  name            = local.instance_name_subnet[terraform.workspace]
  gateway         = "192.168.0.1"
  
  dns1            = "1.1.1.1"
  static_ip_pool {
    start_address = local.instance_start_adress[terraform.workspace]
    end_address   = local.instance_end_adress[terraform.workspace]
  }
}



