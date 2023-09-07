rest_endpoint = "https://pkc-4n66v.australiaeast.azure.confluent.cloud:443"

# credentials
credentials_trusted = {
  cluster_id       = "lkc-pkvz1m"
  key              = "2QOKEDJBHHPBTZTN"
  secret           = "j+WpPJ1O2C9u69JgRDjRrNsv0Vh21wzQuW2O64BWlyVxvGKuFcAa8SpLcZhq+5Z1"
}

credentials_semi_trusted = {
  cluster_id       = "lkc-q8x377"
  key              = "OVKSCVZM23CWHCQX"
  secret           = "pqv5H+dnN8H2MY6sonhe6pA+NMdjtILTKyooUklZoxr+cT5Nbw2ppcaU6YhI15TB"
}

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
  }
]