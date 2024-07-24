resource "aws_sqs_queue" "this" {
  name                        = var.name
  fifo_queue                  = var.fifo_queue
  content_based_deduplication = var.content_based_deduplication
  delay_seconds               = var.delay_seconds
  max_message_size            = var.max_message_size
  message_retention_seconds   = var.message_retention_seconds
  deduplication_scope         = var.fifo_throughput_limit == "perMessageGroupId" ? "messageGroup" : "queue"
  fifo_throughput_limit       = var.fifo_throughput_limit
  
  tags                        = var.tags

  redrive_policy              = jsonencode({
    deadLetterTargetArn       = aws_sqs_queue.dlq.arn
    maxReceiveCount           = var.maxReceiveCount
  })
}

resource "aws_sqs_queue" "dlq" {
  name                        = "${trimsuffix(var.name, ".fifo")}-dlq.fifo"
  fifo_queue                  = var.fifo_queue
  content_based_deduplication = var.content_based_deduplication
  message_retention_seconds   = var.message_retention_seconds
  max_message_size            = var.max_message_size
  tags                        = var.tags
}
