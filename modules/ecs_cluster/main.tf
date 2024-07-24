module "ecs_cluster" {
  source = "./ecs"

  name                      = var.name
  enable_container_insights = true
  log_group_name            = var.log_group_name
  log_retention_days        = 5

  tags = var.tags
}
