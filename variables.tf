variable "resources" {
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