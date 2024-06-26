resource "kubernetes_persistent_volume_v1" "local-pv" {
  count = length(var.resources)
  metadata {
    name   = "${var.resources[count.index].name}-pv"
    labels = var.resources[count.index].labels
  }

  spec {
    capacity = {
      storage = var.resources[count.index].storage
    }
    access_modes = var.resources[count.index].access_modes

    persistent_volume_source {
      local {
        path = var.resources[count.index].path
      }
    }
    persistent_volume_reclaim_policy = "Retain"
    node_affinity {
      required {
        node_selector_term {
          match_expressions {
            key      = var.resources[count.index].node_affinity.key
            operator = var.resources[count.index].node_affinity.operator
            values   = var.resources[count.index].node_affinity.values
          }
        }
      }
    }
  }
}

resource "kubernetes_persistent_volume_claim_v1" "local-pvc" {
  count = length(var.resources)

  metadata {
    name      = "${var.resources[count.index].name}-pvc"
    namespace = var.resources[count.index].namespace
  }

  spec {
    storage_class_name = ""
    access_modes       = var.resources[count.index].access_modes
    resources {
      requests = {
        storage = var.resources[count.index].storage
      }
    }
    volume_name = "${var.resources[count.index].name}-pv"
  }
}