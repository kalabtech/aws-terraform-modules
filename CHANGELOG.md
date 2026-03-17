# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).
Each module is versioned independently using namespaced tags (e.g. `kms/v1.0.0`).

---

## [kms/v1.0.0] - 2026-03-17

### Added
- KMS key with automatic rotation enabled by default
- Root account access policy via `aws_kms_key_policy`
- `prevent_destroy` hardcoded to `true`
- Variables: `alias`, `description`, `deletion_window_days`, `enable_key_rotation`, `tags`
- Outputs: `key_id`, `key_arn`, `alias_arn`, `alias_name`