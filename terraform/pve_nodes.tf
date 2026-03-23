data "proxmox_virtual_environment_nodes" "all" {}

locals {
  accepted_pve_nodes = [
    for name in data.proxmox_virtual_environment_nodes.all.names : name if name != "ruby"
  ]
}
