# S3 Module

S3 bucket with versioning, KMS encryption, public access block, TLS enforcement and lifecycle policy.

## Usage
```hcl
module "s3" {
  source = "github.com/kalabtech/aws-terraform-modules//modules/s3?ref=s3/v1.0.0"

  bucket_name = "my-bucket"
  kms_key_arn = module.kms.key_arn

  tags = {
    Project     = "my-app"
    Environment = "prod"
  }
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|----------|
| bucket_name | S3 bucket name | `string` | - | yes |
| kms_key_arn | KMS key ARN for bucket encryption. If not provided, AES256 is used | `string` | `null` | no |
| enable_versioning | Enable bucket versioning. | `bool` | `true` | no |
| noncurrent_version_expiration_days | Number of days to keep old object versions. | `number` | `0'` | no |
| tags | Tags to apply to all resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| bucket_id | S3 bucket ID |
| bucket_arn | S3 bucket ARN |
| bucket_name | S3 bucket name |

## Notes

- `prevent_destroy` is hardcoded to `true` - bucket cannot be accidentally deleted.
- Versioning is enabled by default ensuring best practices but it can be disabled.
- Public access is fully blocked ensuring best practices.
- HTTP requests are denied via bucket policy ensuring best practices.
- If `kms_key_arn` is not provided, AES256 encryption is used.
