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

No modules.

## Resources

| Name | Type |
|------|------|
| [proxmox_virtual_environment_container.lxc](https://registry.terraform.io/providers/bpg/proxmox/latest/docs/resources/virtual_environment_container) | resource |
| [random_password.password](https://registry.terraform.io/providers/hashicorp/random/3.8.1/docs/resources/password) | resource |
| [random_shuffle.random_node](https://registry.terraform.io/providers/hashicorp/random/3.8.1/docs/resources/shuffle) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cpus"></a> [cpus](#input\_cpus) | n/a | `number` | `2` | no |
| <a name="input_description"></a> [description](#input\_description) | n/a | `string` | n/a | yes |
| <a name="input_disk_datastore_id"></a> [disk\_datastore\_id](#input\_disk\_datastore\_id) | n/a | `string` | n/a | yes |
| <a name="input_disk_size_gb"></a> [disk\_size\_gb](#input\_disk\_size\_gb) | n/a | `number` | `4` | no |
| <a name="input_hostname"></a> [hostname](#input\_hostname) | n/a | `string` | n/a | yes |
| <a name="input_ipv4"></a> [ipv4](#input\_ipv4) | IPv4 with CIDR to assign to the LXC container (e.g. 192.168.1.100/24) | `string` | n/a | yes |
| <a name="input_ipv4_gateway"></a> [ipv4\_gateway](#input\_ipv4\_gateway) | n/a | `string` | n/a | yes |
| <a name="input_memory_mb"></a> [memory\_mb](#input\_memory\_mb) | n/a | `number` | `512` | no |
| <a name="input_network_interface_bridge"></a> [network\_interface\_bridge](#input\_network\_interface\_bridge) | Network interface bridge on which the network card will be added | `string` | n/a | yes |
| <a name="input_node_name"></a> [node\_name](#input\_node\_name) | Node name on which to place the LXC container.<br/>Mutually exclusive with the `node_names` variable. | `string` | `null` | no |
| <a name="input_node_names"></a> [node\_names](#input\_node\_names) | List of node names on which the LXC container can be placed; one will be randomly selected.<br/>Mutually exclusive with the `node_name` variable. | `list(string)` | `null` | no |
| <a name="input_os_template_file_id"></a> [os\_template\_file\_id](#input\_os\_template\_file\_id) | LXC template (e.g. my-storage:vztmpl/debian-13-standard\_13.1-2\_amd64.tar.zst) | `string` | n/a | yes |
| <a name="input_os_type"></a> [os\_type](#input\_os\_type) | n/a | `string` | `"debian"` | no |
| <a name="input_pool_id"></a> [pool\_id](#input\_pool\_id) | n/a | `string` | `null` | no |
| <a name="input_root_password_length"></a> [root\_password\_length](#input\_root\_password\_length) | n/a | `number` | `16` | no |
| <a name="input_root_ssh_key"></a> [root\_ssh\_key](#input\_root\_ssh\_key) | n/a | `set(string)` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `set(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lxc_id"></a> [lxc\_id](#output\_lxc\_id) | n/a |
| <a name="output_root_password"></a> [root\_password](#output\_root\_password) | n/a |
<!-- END_TF_DOCS -->