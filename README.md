# README
# aws-terraform-modules

![CI](https://github.com/kalabtech/aws-terraform-modules/actions/workflows/terraform-checks.yml/badge.svg?branch=main)
![Release](https://github.com/kalabtech/aws-terraform-modules/actions/workflows/release.yml/badge.svg)
![License](https://img.shields.io/github/license/kalabtech/aws-terraform-modules)
![Latest Tag](https://img.shields.io/github/v/tag/kalabtech/aws-terraform-modules?sort=semver)

Reusable AWS Terraform modules versioned with semantic versioning.

## Modules

| Module | Description | Latest Version |
|--------|-------------|----------------|
| [kms](./modules/kms) | KMS key with alias, automatic rotation and root access policy | `kms/v1.0.0` |

## Usage
```hcl
module "kms" {
  source = "github.com/kalabtech/aws-terraform-modules//modules/kms?ref=kms/v1.0.0"

  alias       = "my-app-s3"
  description = "KMS key for S3 bucket encryption"

  tags = {
    Project     = "my-app"
    Environment = "prod"
  }
}
```

## Requirements

| Tool | Version |
|------|---------|
| Terraform | >= 1.4.0 |
| AWS Provider | >= 5.0 |

## Contributing

### Adding a new module

1. Create a new branch: `feature/<module-name>`
2. Add the module under `modules/<module-name>/`
3. Add the module to the matrix in `.github/workflows/terraform-checks.yml`
4. Update `README.md` module table
5. Update `CHANGELOG.md`
6. PR -> squash merge -> tag `<module>/v1.0.0`

## License

[MIT](./LICENSE)
