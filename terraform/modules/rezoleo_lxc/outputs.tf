output "lxc_id" {
  value = proxmox_virtual_environment_container.lxc.id
}

output "root_password" {
  value     = random_password.password.result
  sensitive = true
}
