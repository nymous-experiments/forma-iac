<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_proxmox"></a> [proxmox](#requirement\_proxmox) | ~> 0.99.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.8.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_proxmox"></a> [proxmox](#provider\_proxmox) | 0.99.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.8.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_haproxy_container"></a> [haproxy\_container](#module\_haproxy\_container) | ./modules/rezoleo_lxc | n/a |

## Resources

| Name | Type |
|------|------|
| [proxmox_virtual_environment_container.nginx](https://registry.terraform.io/providers/bpg/proxmox/latest/docs/resources/virtual_environment_container) | resource |
| [random_password.nginx_container_passwords](https://registry.terraform.io/providers/hashicorp/random/3.8.1/docs/resources/password) | resource |
| [random_shuffle.random_node](https://registry.terraform.io/providers/hashicorp/random/3.8.1/docs/resources/shuffle) | resource |
| [proxmox_virtual_environment_nodes.all](https://registry.terraform.io/providers/bpg/proxmox/latest/docs/data-sources/virtual_environment_nodes) | data source |
| [proxmox_virtual_environment_pool.sandbox](https://registry.terraform.io/providers/bpg/proxmox/latest/docs/data-sources/virtual_environment_pool) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_gateway"></a> [gateway](#input\_gateway) | n/a | `string` | `"10.12.0.1"` | no |
| <a name="input_lxc_haproxy_address"></a> [lxc\_haproxy\_address](#input\_lxc\_haproxy\_address) | n/a | `string` | `"10.12.120.0"` | no |
| <a name="input_lxc_nginx_hosts"></a> [lxc\_nginx\_hosts](#input\_lxc\_nginx\_hosts) | n/a | `map(string)` | <pre>{<br/>  "1": "10.12.120.1"<br/>}</pre> | no |
| <a name="input_pve_api_token"></a> [pve\_api\_token](#input\_pve\_api\_token) | n/a | `string` | n/a | yes |
| <a name="input_pve_endpoint"></a> [pve\_endpoint](#input\_pve\_endpoint) | n/a | `string` | n/a | yes |
| <a name="input_pve_lxc_debian_template"></a> [pve\_lxc\_debian\_template](#input\_pve\_lxc\_debian\_template) | n/a | `string` | `"tardis-images:vztmpl/debian-13-standard_13.1-2_amd64.tar.zst"` | no |
| <a name="input_pve_lxc_ssh_keys"></a> [pve\_lxc\_ssh\_keys](#input\_pve\_lxc\_ssh\_keys) | n/a | `list(string)` | <pre>[<br/>  "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAII0SOCu5raj7Vr/jNoPzj6guOsEO8mKmcvRxacUc3/BZ",<br/>  "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIM1RiKdL70LeN7mCjApVJhBgJOPuppyBX5vtUnbd6Zeg"<br/>]</pre> | no |
| <a name="input_pve_node"></a> [pve\_node](#input\_pve\_node) | n/a | `string` | `"theia"` | no |
| <a name="input_pve_vm_cpu_type"></a> [pve\_vm\_cpu\_type](#input\_pve\_vm\_cpu\_type) | n/a | `string` | `"x86-64-v2-AES"` | no |
| <a name="input_pve_vm_datastore"></a> [pve\_vm\_datastore](#input\_pve\_vm\_datastore) | n/a | `string` | `"local-zfs"` | no |
| <a name="input_pve_vm_debian_iso"></a> [pve\_vm\_debian\_iso](#input\_pve\_vm\_debian\_iso) | n/a | `string` | `"tardis-images:iso/debian-12.10.0-amd64-netinst.iso"` | no |
| <a name="input_pve_vm_migrate"></a> [pve\_vm\_migrate](#input\_pve\_vm\_migrate) | n/a | `bool` | `true` | no |
| <a name="input_pve_vm_os"></a> [pve\_vm\_os](#input\_pve\_vm\_os) | n/a | `string` | `"l26"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_haproxy_container_password"></a> [haproxy\_container\_password](#output\_haproxy\_container\_password) | n/a |
| <a name="output_haproxy_lxc_id"></a> [haproxy\_lxc\_id](#output\_haproxy\_lxc\_id) | n/a |
| <a name="output_nginx_container_passwords"></a> [nginx\_container\_passwords](#output\_nginx\_container\_passwords) | n/a |
<!-- END_TF_DOCS -->