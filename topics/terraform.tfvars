# topics
topics_trusted = [
  {
    request_id = 1,
    name = "accounts",
    partitions_count = 3,
    cleanup_policy = "compact"
  },
  {
    request_id = 2,
    name = "transactions",
    partitions_count = 3,
    cleanup_policy = "compact"
  }
]

topics_semi_trusted = [
  {
    request_id = 1,
    name = "accounts",
    partitions_count = 3,
    cleanup_policy = "compact"
  },
  {
    request_id = 2,
    name = "transactions",
    partitions_count = 3,
    cleanup_policy = "compact"
  },
  {
    request_id = 3,
    name = "kiwisaver",
    partitions_count = 3,
    cleanup_policy = "compact"
  },
  {
    request_id = 3,
    name = "general_insurances",
    partitions_count = 3,
    cleanup_policy = "compact"
  }
]