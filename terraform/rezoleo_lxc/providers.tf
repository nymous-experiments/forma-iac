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
