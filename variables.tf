variable "resources" {
  type = list(object({
    name         = string
    storage      = string
    labels       = map(string)
    access_modes = list(string)
    path         = string
    node_affinity = object({
      key      = string
      operator = string
      values   = list(string)
    })
  }))
  description = <<EOT
  Values for the persistent volume and persistent volume claims when in 
  a bare metal context and provisioner is set to local-path.
  If a provisioner is available, set the provisioner variable to the 
  value of the StorageClass for this provisioner.
  EOT
}

variable "namespace" {
  description = "Namespace where the resources are deployed"
  type        = string
}

variable "is_bare_metal" {
  description = "Flag to indicate if the environment is bare metal"
  type        = bool
  default     = false
}

variable "provisioner" {
  description = "Provisioner to use for the storage class"
  type        = string
  default     = ""
}