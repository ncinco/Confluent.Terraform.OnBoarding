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

output "file_set_output"  {
  value = fileset(path.module, "*")
}

data "local_file" "topics_requests_file" {
  filename = "topics_requests.yml"
}

output "topics_requests_output" {
  value = data.local_file.topics_requests_file.content
}

module "topics" {
  source = "../modules/topics"

  rest_endpoint  = var.rest_endpoint
  cluster_id     = var.cluster_id
  cluster_key    = var.cluster_key
  cluster_secret = var.cluster_secret

  topics = var.topics
}