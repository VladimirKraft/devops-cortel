variable "vm_count_stage" {
  description = "Number of vm hosts in stage"
  default = "1"
}

variable "vm_count_prod" {
  description = "Number of vm hosts in prod"
  default = "2"
}

variable "vcd_template_os" {
  description = "OS Template"
  default = "vm-2"
}

variable "vcd_org_user" {
  description = "vCD Tenant User"
}

variable "vcd_org_password" {
  description = "vCD Tenant Password"
}

variable "vcd_org" {
  description = "vCD Tenant Org"
}

variable "vcd_org_vdc" {
  description = "vCD Tenant VDC"
}

variable "vcd_org_url" {
  description = "vCD Tenant URL"
}

variable "vcd_org_allow_unverified_ssl" {
  description = "allow unverified ssl"
}

variable "vcd_org_catalog" {
  description = "name of org catalog"
  default = "forTerraform"
}

variable "power_on" {
  description = "On/off power on create vm"
  default = true
}


