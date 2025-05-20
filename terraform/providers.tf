terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.7.2"
    }

    proxmox = {
      source  = "bpg/proxmox"
      version = "0.78.0"
    }
  }
}

provider "proxmox" {
  endpoint = var.pve_endpoint
  insecure = true // This is BAD

  api_token = var.pve_api_token

  random_vm_ids = true
}
