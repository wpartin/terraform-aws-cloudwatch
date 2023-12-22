resource "aws_cloudwatch_log_group" "this" {
  for_each = local.enable_log_group

  kms_key_id        = local.kms_key_id
  log_group_class   = var.log_group_class
  name              = "/aws/${var.context.namespace}/${var.context.env}/${var.context.id}"
  retention_in_days = var.retention_in_days
  skip_destroy      = var.skip_destroy

  tags = var.tags
}

resource "aws_cloudwatch_log_stream" "this" {
  for_each = local.enable_log_stream

  name           = "/aws/stream/${var.context.namespace}/${var.context.env}/${var.name}"
  log_group_name = aws_cloudwatch_log_group.this[var.name].name
}