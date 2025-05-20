variable "pve_endpoint" {
  type = string
}

variable "pve_api_token" {
  type = string
}

variable "pve_node" {
  type = string
  default = "theia"
}

variable "pve_vm_datastore" {
  type = string
  default = "local-zfs"
}

variable "pve_vm_cpu_type" {
  type = string
  default = "x86-64-v2-AES"
}

variable "pve_vm_migrate" {
  type = bool
  default = true
}

variable "pve_vm_os" {
  type = string
  default = "l26"
}

variable "pve_vm_debian_iso" {
  type = string
  default = "tardis-images:iso/debian-12.10.0-amd64-netinst.iso"
}

variable "pve_lxc_ssh_key" {
  type = string
  default = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAII0SOCu5raj7Vr/jNoPzj6guOsEO8mKmcvRxacUc3/BZ"
}

variable "pve_lxc_debian_12_template" {
  type = string
  default = "tardis-images:vztmpl/debian-12-standard_12.7-1_amd64.tar.zst"
}

variable "gateway" {
  type    = string
  default = "10.12.0.1"
}

variable "lxc_nginx_hosts" {
  type = map(string)
  default = {
    "1" = "10.12.120.1"
    # "2" = "10.12.120.2"
    # "3" = "10.12.120.3"
    # "4" = "10.12.120.4"
  }
}

variable "lxc_haproxy_address" {
  type = string
  default = "10.12.120.0"
}
