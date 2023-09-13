variable "rest_endpoint"{
  description        = "Environment endpoint"
  type               = string
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