<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.9 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.20.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.20.0 |

## Resources

| Name | Type |
|------|------|
| [kubernetes_persistent_volume_claim_v1.local-pvc](https://registry.terraform.io/providers/hashicorp/kubernetes/2.20.0/docs/resources/persistent_volume_claim_v1) | resource |
| [kubernetes_persistent_volume_v1.local-pv](https://registry.terraform.io/providers/hashicorp/kubernetes/2.20.0/docs/resources/persistent_volume_v1) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_config_path"></a> [config\_path](#input\_config\_path) | Path to the kubeconfig file. | `string` | n/a | yes |
| <a name="input_resources"></a> [resources](#input\_resources) | Values for the persistent volume and persistent volume claims when in <br>  a bare metal / local cluster context and there with no provisioner to <br>  dynamically create PV & PVC. | <pre>list(object({<br>    name         = string<br>    storage      = string<br>    labels       = map(string)<br>    access_modes = list(string)<br>    path         = string<br>    namespace    = string<br>    node_affinity = object({<br>      key      = string<br>      operator = string<br>      values   = list(string)<br>    })<br>  }))</pre> | n/a | yes |
<!-- END_TF_DOCS -->