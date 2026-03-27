# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).
Each module is versioned independently using namespaced tags (e.g. `kms/v1.0.0`).

---

## 1.0.0 (2026-03-27)


### Features

* **ci:** implement release-please ([bb063ab](https://github.com/kalabtech/aws-terraform-modules/commit/bb063aba4b34732580c41bb7a7df86c5429f8254))
* **kms:** add kms module ([38d66df](https://github.com/kalabtech/aws-terraform-modules/commit/38d66df40c042b4eea1cdda5caa28b00411ed82f))
* **s3:** add s3 module ([3f1ed9f](https://github.com/kalabtech/aws-terraform-modules/commit/3f1ed9f0013c95772665283ca59ac546b60a638b))
* **template:** implement copier and pin v1.1.2 ([785d0ef](https://github.com/kalabtech/aws-terraform-modules/commit/785d0ef477656acc5b599d612de67c6d1a773670))


### Bug Fixes

* **ci:** adapt workflow to only modules repo ([8b13a69](https://github.com/kalabtech/aws-terraform-modules/commit/8b13a6957b7b96eb8aedb8a478e3a8f3a05b8643))
* **ci:** add main branch trigger ([263b23c](https://github.com/kalabtech/aws-terraform-modules/commit/263b23ca7390b7b3465d06e9cc07c9dff9d44dc0))
* **ci:** rename checks matrix gha workflow ([0514e9d](https://github.com/kalabtech/aws-terraform-modules/commit/0514e9d8a83d922d0e71d5c385e4b0001f9a317a))
* **readme:** fix ci badge url ([50c75b0](https://github.com/kalabtech/aws-terraform-modules/commit/50c75b0544cc8395f0969f22e9e0e378ed018642))
* **s3:** rename module folder to s3 ([a778d60](https://github.com/kalabtech/aws-terraform-modules/commit/a778d60c5c2809fd0cb1ac771251ab261c7380fa))

## [kms/v1.0.0] - 2026-03-17

### Added
- KMS key with automatic rotation enabled by default
- Root account access policy via `aws_kms_key_policy`
- `prevent_destroy` hardcoded to `true`
- Variables: `alias`, `description`, `deletion_window_days`, `enable_key_rotation`, `tags`
- Outputs: `key_id`, `key_arn`, `alias_arn`, `alias_name`

## [s3/v1.0.0] - 2026-03-17

### Added
- S3 bucket with versioning enabled
- KMS encryption support, defaults to AES256 if no key is provided
- Public access fully blocked
- TLS enforced via bucket policy
- Lifecycle policy for old version expiration
- Variables: `bucket_name`, `kms_key_arn`, `noncurrent_version_expiration_days`, `tags`
- Outputs: `bucket_id`, `bucket_arn`, `bucket_name`
