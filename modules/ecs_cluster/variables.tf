variable "name" {
  description = "Name of the cluster"
  type        = string
}

variable "log_group_name" {
  description = "The name of the CloudWatch log group to send logs to"
  type        = string
}

variable "log_retention_days" {
  description = "Specifies the number of days you want to retain log events in the specified log group"
  type        = number
  default     = 5
}

variable "enable_container_insights" {
  description = "Value to assign to the setting for container insights"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Key-value map of resource tags"
  type        = map(string)
  default     = {}
}
