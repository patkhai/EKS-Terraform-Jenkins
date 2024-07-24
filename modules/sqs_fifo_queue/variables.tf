variable "name" {
  description = "The name of the queue"
  type        = string
}

variable "delay_seconds" {
  description = "The time in seconds that the delivery of all messages in the queue will be delayed"
  type        = number
  default     = 0
}

variable "content_based_deduplication" {
  description = "Enables content-based deduplication for FIFO queues"
  type        = bool
  default     = false
}

variable "max_message_size" {
  description = "The limit of how many bytes a message can contain before Amazon SQS rejects it"
  type        = number
  default     = 262144
}

variable "message_retention_seconds" {
  description = "The number of seconds Amazon SQS retains a message"
  type        = number
  default     = 345600
}

variable "maxReceiveCount" {
  description = "The number of times that a message can be retrieved before being moved to the dead-letter queue"
  type        = number
  default     = 4
}

variable "fifo_throughput_limit" {
  description = "Specifies whether the FIFO queue throughput quota applies to the entire queue or per message group"
  type        = string
  default     = "perQueue"
  validation {
    condition     = contains(["perQueue", "perMessageGroupId"], var.fifo_throughput_limit)
    error_message = "fifo_throughput_limit must be either 'perQueue' or 'perMessageGroupId'."
  }
}

variable "fifo_queue" {
  description = "Boolean designating a FIFO queue"
  type        = bool
  default     = false
}

variable "tags" {
  description = "A map of tags to assign to the queue"
  type        = map(string)
  default     = {}
}