## Usage

```hcl
module "cloudwatch_logs" {
    source = "git::github.com/wpartin/aws-cloudwatch?ref=v0.1.0"

    description = "My test log group."
    id          = var.id
    name        = var.name

    tags = var.tags
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_kms"></a> [kms](#module\_kms) | git::github.com/wpartin/terraform-aws-kms | v0.1.1 |

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_log_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_cloudwatch_log_stream.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_stream) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_context"></a> [context](#input\_context) | Pass in the appropriate label context module to this variable. | `any` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | The description for the created resources. | `string` | n/a | yes |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Enable or disable the module. | `bool` | `true` | no |
| <a name="input_generate_kms_key"></a> [generate\_kms\_key](#input\_generate\_kms\_key) | Create a new KMS key to use with the log group. "kms\_key\_id" must be null and this set to "true" to generate. | `bool` | `false` | no |
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | The KMS key ID to use if desired. | `string` | `null` | no |
| <a name="input_log_group_class"></a> [log\_group\_class](#input\_log\_group\_class) | The access class of the log group. | `string` | `"STANDARD"` | no |
| <a name="input_log_stream_names"></a> [log\_stream\_names](#input\_log\_stream\_names) | A list of log stream names if desired. | `list(string)` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The name to apply to the resources. | `string` | n/a | yes |
| <a name="input_retention_in_days"></a> [retention\_in\_days](#input\_retention\_in\_days) | The number of retention days to use for the log group. | `number` | `7` | no |
| <a name="input_skip_destroy"></a> [skip\_destroy](#input\_skip\_destroy) | Set to true if you want the log group to be kept after Terraform destroy. | `bool` | `false` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | The tags to apply to the resource. | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_log_group_arn"></a> [log\_group\_arn](#output\_log\_group\_arn) | The ARN of the CloudWatch Log Group. |
| <a name="output_log_group_class"></a> [log\_group\_class](#output\_log\_group\_class) | The retention class for the CloudWatch Log Group. |
| <a name="output_log_group_kms_key_id"></a> [log\_group\_kms\_key\_id](#output\_log\_group\_kms\_key\_id) | The KMS key id if used for the CloudWatch Log Group. |
| <a name="output_log_group_name"></a> [log\_group\_name](#output\_log\_group\_name) | The name of the CloudWatch Log Group. |
<!-- END_TF_DOCS -->
