module "haproxy_container" {
  source = "./modules/rezoleo_lxc"

  description = <<EOT
Test LXC by Nymous, managed by Terraform

HAProxy
EOT
  # node_name   = var.pve_node
  node_names = local.accepted_pve_nodes
  tags       = ["terraform", "haproxy"]
  pool_id    = data.proxmox_virtual_environment_pool.sandbox.pool_id

  root_ssh_key             = var.pve_lxc_ssh_keys
  disk_datastore_id        = var.pve_vm_datastore
  disk_size_gb             = 4
  hostname                 = "test-nymous-lxc-terraform-haproxy.rezoleo.fr"
  ipv4                     = "${var.lxc_haproxy_address}/16"
  ipv4_gateway             = var.gateway
  network_interface_bridge = "vmbr12"
  os_template_file_id      = var.pve_lxc_debian_template
}

output "haproxy_lxc_id" {
  value = module.haproxy_container.lxc_id
}

output "haproxy_container_password" {
  value     = module.haproxy_container.root_password
  sensitive = true
}
