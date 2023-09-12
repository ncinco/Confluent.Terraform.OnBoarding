terraform {
  required_providers {
    confluent = {
      source = "confluentinc/confluent"
      version = "1.51.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.57.0"
    }
  }

  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}

locals {
  var_token_requests = yamldecode(templatefile("./${path.module}/topic_requests.yaml", {
  }))
}

output "topic_requests"{
  value = yamldecode(file("${path.module}/topic_requests.yaml"))
}

module "topics" {
  source = "../modules/topics"

  rest_endpoint  = var.rest_endpoint
  cluster_id     = var.cluster_id
  cluster_key    = var.cluster_key
  cluster_secret = var.cluster_secret

  topics = locals.var_token_requests
}