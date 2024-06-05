<!-- BEGIN_TF_DOCS -->


## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | n/a |

## Resources

| Name | Type |
|------|------|
| [kubernetes_persistent_volume_claim_v1.local-pvc](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/persistent_volume_claim_v1) | resource |
| [kubernetes_persistent_volume_v1.local-pv](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/persistent_volume_v1) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace where the resources are deployed | `string` | n/a | yes |
| <a name="input_resources"></a> [resources](#input\_resources) | n/a | `any` | n/a | yes |
| <a name="input_is_bare_metal"></a> [is\_bare\_metal](#input\_is\_bare\_metal) | Flag to indicate if the environment is bare metal | `bool` | `false` | no |
| <a name="input_provisioner"></a> [provisioner](#input\_provisioner) | Provisioner to use for the storage class | `string` | `""` | no |
<!-- END_TF_DOCS -->