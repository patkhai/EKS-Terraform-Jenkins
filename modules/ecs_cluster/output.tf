output "arn" {
  value = module.ecs_cluster.arn
}

output "log_group_name" {
  value = module.ecs_cluster.log_group_name
}