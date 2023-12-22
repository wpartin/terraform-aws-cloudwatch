output "log_group_arn" {
  description = "The ARN of the CloudWatch Log Group."
  value       = local.log_group ? aws_cloudwatch_log_group.this[var.name].arn : null
}

output "log_group_class" {
  description = "The retention class for the CloudWatch Log Group."
  value       = local.log_group ? aws_cloudwatch_log_group.this[var.name].log_group_class : null
}

output "log_group_kms_key_id" {
  description = "The KMS key id if used for the CloudWatch Log Group."
  value       = var.kms_key_id
}

output "log_group_name" {
  description = "The name of the CloudWatch Log Group."
  value       = local.log_group ? aws_cloudwatch_log_group.this[var.name].name : null
}

output "log_stream_arns" {
  description = "The ARN of the CloudWatch Log Stream."
  value       = local.log_stream ? [for _, arn in aws_cloudwatch_log_stream.this[var.name] : arn] : null
}