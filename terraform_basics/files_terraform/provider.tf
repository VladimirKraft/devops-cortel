terraform {
  required_version = ">= 0.13.0"

    required_providers {
      vcd = {
        source = "vmware/vcd"
        version = "3.9.0"
      }
    }
}

# Configure the VMware vCloud Direcotr Provider
provider "vcd" {
  user = var.vcd_org_user
  password = var.vcd_org_password
  org = var.vcd_org
  vdc = var.vcd_org_vdc
  url = var.vcd_org_url
  allow_unverified_ssl = var.vcd_org_allow_unverified_ssl

}