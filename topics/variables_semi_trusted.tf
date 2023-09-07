variable "credentials_semi_trusted" {
  description = "Credentials for a semi trusted cluster"
  type = object({
    cluster_id       = string
    key              = string
    secret           = string
  })
}

variable "topics_semi_trusted" {
  description = "List of kafka topic(s) for a semi trusted cluster"
  type = list(object({
    request_id       = string
    cluster_id       = string
    name             = string
    partitions_count = number
    cleanup_policy   = string
  }))
}