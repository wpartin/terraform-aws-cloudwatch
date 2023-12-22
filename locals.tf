locals {
  log_group  = var.enabled && var.log_stream_names == null ? true : false
  log_stream = var.enabled && var.log_stream_names != null ? true : false

  enable_log_group  = local.log_group ? toset([var.name]) : toset([])
  enable_log_stream = local.log_stream ? toset(var.log_stream_names) : toset([])

  kms_key_id = var.generate_kms_key && var.kms_key_id == null ? module.kms[var.name].key_arn : var.kms_key_id
}