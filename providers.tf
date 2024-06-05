terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.20.0"
    }
  }
  required_version = ">= 1.3.9"
}

provider "kubernetes" {
  config_path = var.config_path
}