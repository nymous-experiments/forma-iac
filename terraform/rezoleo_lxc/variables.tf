variable "hostname" {
  type = string
}

variable "description" {
  type = string
}

variable "tags" {
  type = set(string)
  default = []
}

variable "node_name" {
  type = string
}

variable "pool_id" {
  type    = string
  default = null
}

variable "ipv4" {
  description = "IPv4 with CIDR to assign to the LXC container (e.g. 192.168.1.100/24)"
  type = string
}

variable "ipv4_gateway" {
  type = string
}

variable "network_interface_bridge" {
  description = "Network interface bridge on which the network card will be added"
  type = string
}

variable "root_ssh_key" {
  type = set(string)
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
  type    = string
}

variable "disk_size_gb" {
  type    = number
  default = 4
}

variable "os_template_file_id" {
  description = "LXC template (e.g. my-storage:vztmpl/debian-12-standard_12.7-1_amd64.tar.zst)"
  type    = string
}

variable "os_type" {
  type    = string
  default = "debian"
}
