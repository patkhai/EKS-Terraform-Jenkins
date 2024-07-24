output "arn" {
  description = "SQS queue arn"
  value       = aws_sqs_queue.this.arn
}

output "arn_dlq" {
  description = "SQS dead-letter queue arn"
  value       = aws_sqs_queue.dlq.arn
}