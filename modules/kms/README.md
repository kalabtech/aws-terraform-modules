# KMS Module

KMS key with alias, automatic rotation, and root account access policy.

## Usage
```hcl
module "kms" {
  source = "github.com/kalabtech/aws-terraform-modules//modules/kms?ref=v1.0.0"

  alias       = "my-app-s3"
  description = "KMS key for S3 bucket encryption"

  tags = {
    Purpose = "s3-encryption"
  }
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|----------|
| alias | KMS key alias name (without 'alias/' prefix) | `string` | - | yes |
| description | Description of the KMS key purpose | `string` | - | yes |
| deletion_window_days | Number of days before KMS key deletion (7-30) | `number` | `30` | no |
| enable_key_rotation | Enable automatic KMS key rotation | `bool` | `true` | no |
| tags | Tags to apply to all resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| key_id | KMS key ID |
| key_arn | KMS key ARN |
| alias_arn | KMS alias ARN |
| alias_name | KMS alias name |

## Notes

- `prevent_destroy` is hardcoded to `true` - destroying this key makes encrypted data inaccessible.
- Key rotation is enabled by default (security best practices).
