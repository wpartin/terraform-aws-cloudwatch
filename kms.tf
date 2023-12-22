module "kms" {
  source = "git::github.com/wpartin/terraform-aws-kms?ref=v0.1.1"

  enabled     = var.generate_kms_key
  description = var.description

  context = var.context

  tags = var.tags
}