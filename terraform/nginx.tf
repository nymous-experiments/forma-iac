resource "proxmox_virtual_environment_container" "nginx" {
  for_each = var.lxc_nginx_hosts

  description = <<EOT
Test LXC by Nymous, managed by Terraform

Nginx
EOT
  tags = ["terraform", "nginx"]
  pool_id     = data.proxmox_virtual_environment_pool.sandbox.pool_id

  node_name = var.pve_node

  unprivileged = true
  features {
    nesting = true
  }

  initialization {
    hostname = "test-nymous-lxc-terraform-nginx-${each.key}.rezoleo.fr"

    ip_config {
      ipv4 {
        address = "${each.value}/16"
        gateway = var.gateway
      }
    }

    user_account {
      keys = [var.pve_lxc_ssh_key]
      password = random_password.nginx_container_passwords[each.key].result
    }
  }

  cpu {
    cores = 2
    units = 100 // New default since cgroup v2, old was 1024
  }
  memory {
    dedicated = 512 // In MB
  }
  network_interface {
    name   = "eth0"
    bridge = "vmbr12"
  }
  disk {
    datastore_id = var.pve_vm_datastore
    size         = 4 // In GB
  }
  operating_system {
    template_file_id = var.pve_lxc_debian_12_template
    type             = "debian"
  }
}

resource "random_password" "nginx_container_passwords" {
  for_each = var.lxc_nginx_hosts

  length           = 16
  override_special = "_%@"
  special          = true
}

output "nginx_container_passwords" {
  value     = {
    for key, value in random_password.nginx_container_passwords: key => value.result
  }
  sensitive = true
}
