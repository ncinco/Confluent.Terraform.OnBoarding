resource "confluent_kafka_topic" "kafka_topics" {
  for_each           = { for topic in var.topics : topic.request_id => topic }
  
  kafka_cluster {
    id = var.cluster_id
  }
  topic_name         = each.value.name
  partitions_count   = each.value.partitions_count
  rest_endpoint      = var.rest_endpoint

  # kafka cluster level api key
  credentials {
    key              = var.cluster_key
    secret           = var.cluster_secret
  }
  config = {
    "cleanup.policy" = each.value.cleanup_policy
  }

  lifecycle {
    prevent_destroy  = true
  }
}