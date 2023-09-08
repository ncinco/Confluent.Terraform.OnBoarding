variable "rest_endpoint"{
  description        = "Environment endpoint"
  type               = string
}

variable "credentials" {
  description = "Credentials for a  cluster"
  type = object({
    cluster_id       = string
    key              = string
    secret           = string
  })
}

variable "topics" {
  description = "List of kafka topic(s) for a cluster"
  type = list(object({
    request_id       = string
    name             = string
    partitions_count = number
    cleanup_policy   = string
  }))
}