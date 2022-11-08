<!-- BEGIN_TF_DOCS -->
[![Tests](https://github.com/netascode/terraform-aci-scaffolding/actions/workflows/test.yml/badge.svg)](https://github.com/netascode/terraform-aci-scaffolding/actions/workflows/test.yml)

# Terraform ACI Scaffolding Module

Description

Location in GUI:
`Tenants` » `XXX`

## Examples

```hcl
module "aci_scaffolding" {
  source  = "netascode/scaffolding/aci"
  version = ">= 0.0.1"

  name        = "ABC"
  alias       = "ABC-ALIAS"
  description = "My Description"
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_aci"></a> [aci](#requirement\_aci) | >= 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aci"></a> [aci](#provider\_aci) | >= 2.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | IGMP Snooping Policy name. | `string` | n/a | yes |
| <a name="input_tenant"></a> [tenant](#input\_tenant) | IGMP Snooping Policy's tenant name. | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | IGMP Snooping Policy description. | `string` | `""` | no |
| <a name="input_admin_state"></a> [admin\_state](#input\_admin\_state) | IGMP Snooping Policy administritative state. | `bool` | `true` | no |
| <a name="input_fast_leave"></a> [fast\_leave](#input\_fast\_leave) | IGMP Snooping Policy flag for Fast-Leave. | `bool` | `false` | no |
| <a name="input_querier"></a> [querier](#input\_querier) | IGMP Snooping Policy flag for querier. | `bool` | `false` | no |
| <a name="input_last_member_query_interval"></a> [last\_member\_query\_interval](#input\_last\_member\_query\_interval) | IGMP Snooping Policy last member query interval. Allowed values between 1-25. | `number` | `1` | no |
| <a name="input_query_interval"></a> [query\_interval](#input\_query\_interval) | IGMP Snooping Policy query interval. Allowed values between 1-18000. | `number` | `125` | no |
| <a name="input_query_response_interval"></a> [query\_response\_interval](#input\_query\_response\_interval) | IGMP Snooping Policy query response interval. Allowed values between 1-25. | `number` | `10` | no |
| <a name="input_start_query_count"></a> [start\_query\_count](#input\_start\_query\_count) | IGMP Snooping Policy start query count. Allowed values between 1-10. | `number` | `2` | no |
| <a name="input_start_query_interval"></a> [start\_query\_interval](#input\_start\_query\_interval) | IGMP Snooping Policy start query interval. Allowed values between 1-18000. | `number` | `31` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dn"></a> [dn](#output\_dn) | Distinguished name of `igmpSnoopPol` object. |
| <a name="output_name"></a> [name](#output\_name) | IGMP Snooping Policy name. |

## Resources

| Name | Type |
|------|------|
| [aci_rest_managed.igmpSnoopPol](https://registry.terraform.io/providers/CiscoDevNet/aci/latest/docs/resources/rest_managed) | resource |
<!-- END_TF_DOCS -->