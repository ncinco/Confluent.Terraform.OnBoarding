variable "rest_endpoint"{
  description        = "Environment endpoint"
  type               = string
  default            = "https://pkc-4n66v.australiaeast.azure.confluent.cloud:443"
}

variable "cluster_id"{
  description        = "Cluster Id"
  type               = string
}

variable "cluster_key"{
  description        = "Cluster Key"
  type               = string
  sensitive          = true
}

variable "cluster_secret"{
  description        = "Cluster secret"
  type               = string
  sensitive          = true
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