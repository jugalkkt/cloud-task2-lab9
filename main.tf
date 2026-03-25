provider "kubernetes" {
  host                   = "https://fake-cluster"
  client_certificate     = "fake"
  client_key             = "fake"
  cluster_ca_certificate = "fake"
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