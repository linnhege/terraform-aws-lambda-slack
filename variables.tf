variable "name_prefix" {
  description = "A prefix that will be added to resources so that they are unique."
}

variable "topic_name" {
  description = "A prefix that will be added to resources so that they are unique."
}

variable "has_random_postfix" {
  description = "Boolean for adding a random string to the end of the iam role, iam policy, topic and function names"
  default     = true
}

variable "handler" {
  description = "The function entrypoint in the code."
  default     = "main"
}

variable "timeout" {
  description = "Timeout for the lambda function that copies log entries to Cloud Watch. Modify if needed."
  default     = 30
}

variable "memory_size" {
  description = "Memory allocation for the lambda function. Modify if needed."
  default     = 256
}

variable "lambda_s3_bucket" {
  description = "The bucket where the lambda function is uploaded."
  default     = "telia-oss"
}

variable "s3_key" {
  description = "The s3 key for the Lambda artifact."
  default     = "aws-notify-slack/main.zip"
}

variable "slack_hook" {
  description = "Slack channel webhook."
}

variable "username" {
  description = "Slack username."
  default     = "AWS-bot"
}

variable "icon" {
  description = "Slack icon."
  default     = ":loudspeaker:"
}
