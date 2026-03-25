terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
    }
  }
}

resource "null_resource" "deploy_openfaas" {
  provisioner "local-exec" {
    command = "echo Deploying OpenFaaS Function via Terraform"
  }
}

resource "null_resource" "destroy_openfaas" {
  provisioner "local-exec" {
    when    = destroy
    command = "echo Destroying OpenFaaS Function"
  }
}