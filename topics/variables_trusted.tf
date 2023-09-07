variable "credentials_trusted" {
  description = "Credentials for a trusted cluster"
  type = object({
    cluster_id       = string
    key              = string
    secret           = string
  })
}

variable "topics_trusted" {
  description = "List of kafka topic(s) for a trusted cluster"
  type = list(object({
    request_id       = string
    name             = string
    partitions_count = number
    cleanup_policy   = string
  }))
}