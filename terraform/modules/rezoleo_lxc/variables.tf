variable "hostname" {
  type = string
}

variable "description" {
  type = string
}

variable "tags" {
  type    = set(string)
  default = []
}

variable "node_name" {
  type        = string
  default     = null
  description = <<EOT
Node name on which to place the LXC container.
Mutually exclusive with the `node_names` variable.
EOT
}

variable "node_names" {
  type        = list(string)
  default     = null
  description = <<EOT
List of node names on which the LXC container can be placed; one will be randomly selected.
Mutually exclusive with the `node_name` variable.
EOT
  validation {
    condition     = (var.node_name != null || var.node_names != null)
    error_message = "Must set either `node_name` or `node_names`."
  }

  validation {
    condition     = (var.node_name == null || var.node_names == null)
    error_message = "Cannot set both `node_name` and `node_names`."
  }
}

variable "pool_id" {
  type    = string
  default = null
}

variable "ipv4" {
  description = "IPv4 with CIDR to assign to the LXC container (e.g. 192.168.1.100/24)"
  type        = string
}

variable "ipv4_gateway" {
  type = string
}

variable "network_interface_bridge" {
  description = "Network interface bridge on which the network card will be added"
  type        = string
}

variable "root_ssh_key" {
  type    = set(string)
  default = null
}

variable "root_password_length" {
  type    = number
  default = 16
}

variable "cpus" {
  type    = number
  default = 2
}

variable "memory_mb" {
  type    = number
  default = 512
}

variable "disk_datastore_id" {
  type = string
}

variable "disk_size_gb" {
  type    = number
  default = 4
}

variable "os_template_file_id" {
  description = "LXC template (e.g. my-storage:vztmpl/debian-13-standard_13.1-2_amd64.tar.zst)"
  type        = string
}

variable "os_type" {
  type    = string
  default = "debian"
}
