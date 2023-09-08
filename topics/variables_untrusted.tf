variable "credentials_untrusted" {
  description = "Credentials for a untrusted cluster"
  type = object({
    cluster_id       = string
    key              = string
    secret           = string
  })
}

variable "topics_untrusted" {
  description = "List of kafka topic(s) for a untrusted cluster"
  type = list(object({
    request_id       = string
    name             = string
    partitions_count = number
    cleanup_policy   = string
  }))
}