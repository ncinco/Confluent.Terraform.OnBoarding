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
    cleanup_policy = "delete"
  },
  {
    request_id = 2,
    name = "transactions",
    partitions_count = 3,
    cleanup_policy = "delete"
  },
  {
    request_id = 3,
    name = "kiwisaver",
    partitions_count = 3,
    cleanup_policy = "delete"
  }
]

topics_untrusted = [
  {
    request_id = 1,
    name = "savings",
    partitions_count = 6,
    cleanup_policy = "delete"
  },
  {
    request_id = 2,
    name = "homeloans",
    partitions_count = 6,
    cleanup_policy = "compact"
  }
]