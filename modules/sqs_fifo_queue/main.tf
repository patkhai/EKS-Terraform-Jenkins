module "sqs_fifo" {
  source = "./sqs"

  name                        = var.name
  fifo_queue                  = true
  content_based_deduplication = true
  delay_seconds               = var.delay_seconds
  max_message_size            = var.max_message_size
  message_retention_seconds   = var.message_retention_seconds
  fifo_throughput_limit       = var.fifo_throughput_limit
  tags                        = var.tags
}