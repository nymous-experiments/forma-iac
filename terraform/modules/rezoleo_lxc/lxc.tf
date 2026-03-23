resource "random_shuffle" "random_node" {
  count        = var.node_names != null ? 1 : 0
  input        = var.node_names
  result_count = 1
}

locals {
  node_name = var.node_name != null ? var.node_name : random_shuffle.random_node[0].result[0]
}

resource "proxmox_virtual_environment_container" "lxc" {
  description = var.description
  tags        = var.tags
  pool_id     = var.pool_id

  node_name = local.node_name

  lifecycle {
    ignore_changes = [node_name]
  }

  unprivileged = true
  features {
    nesting = true
  }

  initialization {
    hostname = var.hostname

    ip_config {
      ipv4 {
        address = var.ipv4
        gateway = var.ipv4_gateway
      }
    }

    user_account {
      keys     = var.root_ssh_key
      password = random_password.password.result
    }
  }

  cpu {
    cores = var.cpus
    units = 100 // New default since cgroup v2, old was 1024
  }
  memory {
    dedicated = var.memory_mb // In MB
  }
  network_interface {
    name   = "eth0"
    bridge = var.network_interface_bridge
  }
  disk {
    datastore_id = var.disk_datastore_id
    size         = var.disk_size_gb // In GB
  }
  operating_system {
    template_file_id = var.os_template_file_id
    type             = var.os_type
  }
}

resource "random_password" "password" {
  length           = var.root_password_length
  override_special = "_%@"
  special          = true
}

# resource "aws_instance" "example" {
#   ami = "ami-0fb653ca2d3203ac1"
#   instance_type = "t2.micro"
# }
