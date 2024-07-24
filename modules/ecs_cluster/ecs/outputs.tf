output "arn" {
  description = "ECS cluster arn"
  value       = aws_ecs_cluster.this.arn
}

output "log_group_name" {
  description = "Log group arn"
  value       = aws_cloudwatch_log_group.this.name
}