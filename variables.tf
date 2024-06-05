variable "resources" {
  type = list(object({
    name         = string
    storage      = string
    labels       = map(string)
    access_modes = list(string)
    path         = string
    namespace    = string
    node_affinity = object({
      key      = string
      operator = string
      values   = list(string)
    })
  }))
  description = <<EOT
  Values for the persistent volume and persistent volume claims when in 
  a bare metal / local cluster context and there with no provisioner to 
  dynamically create PV & PVC.
  EOT
}

variable "config_path" {
  type        = string
  description = "Path to the kubeconfig file."
}