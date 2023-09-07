resource "confluent_kafka_topic" "kafka_topics_trusted" {
  for_each           = { for topic in var.topics_trusted : topic.request_id => topic }
  
  kafka_cluster {
    id = var.credentials_trusted.cluster_id
  }
  topic_name         = each.value.name
  partitions_count   = each.value.partitions_count
  rest_endpoint      = var.rest_endpoint

  # kafka cluster level api key
  credentials {
    key              = var.credentials_trusted.key
    secret           = var.credentials_trusted.secret
  }
  config = {
    "cleanup.policy" = each.value.cleanup_policy
  }

  lifecycle {
    prevent_destroy  = true
  }
}