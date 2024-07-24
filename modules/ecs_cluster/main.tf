module "kms_key" {
  source = "../kms_key"


  deletion_window_in_days = 7
  enable_key_rotation     = true
  tags                    = var.tags
}


module "ecs_cluster" {
  source = "./ecs"

  name                      = var.name
  enable_container_insights = true
  log_group_name            = var.log_group_name
  log_retention_days        = 365
  kms_key_id                = module.kms_key.key_arn

  tags = var.tags
}

