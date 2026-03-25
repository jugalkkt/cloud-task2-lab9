provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_manifest" "openfaas_function" {
  manifest = {
    apiVersion = "openfaas.com/v1"
    kind       = "Function"
    metadata = {
      name      = "hello-fn"
      namespace = "openfaas-fn"
    }
    spec = {
      name  = "hello-fn"
      image = "hello-fn:latest"
    }
  }
}