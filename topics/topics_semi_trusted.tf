resource "confluent_kafka_topic" "kafka_topics_semi_trusted" {
  for_each           = { for topic in var.topics_semi_trusted : topic.request_id => topic }
  
  kafka_cluster {
    id = var.credentials_semi_trusted.cluster_id
  }
  topic_name         = each.value.name
  partitions_count   = each.value.partitions_count
  rest_endpoint      = var.rest_endpoint

  # kafka cluster level api key
  credentials {
    key              = var.credentials_semi_trusted.key
    secret           = var.credentials_semi_trusted.secret
  }
  config = {
    "cleanup.policy" = each.value.cleanup_policy
  }

  lifecycle {
    prevent_destroy  = true
  }
}