output "arn" {
  value = module.sqs_fifo.arn
}

output "arn_dlq" {
  value = module.sqs_fifo.arn_dlq
}