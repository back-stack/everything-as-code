resource "argocd_application" "app-of-apps" {
  metadata {
    name      = "app-of-apps"
    namespace = "argocd"
    labels = {
      cluster = "in-cluster"
    }
  }
  cascade = true
  wait    = true
  spec {
    project = "default"
    destination {
      name      = "in-cluster"
      namespace = "argocd"
    }
    source {
      repo_url        = var.app_of_apps.repo_url
      path            = var.app_of_apps.path
      target_revision = var.app_of_apps.target_revision
    }
    sync_policy {
      automated {
        prune     = true
        self_heal = true
      }
    }
  }
}
