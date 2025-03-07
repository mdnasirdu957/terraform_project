# aws_s3_bucket.existing_s3_import will be imported
  # (config will be generated)
    resource "aws_s3_bucket" "existing_s3_import" {
        acceleration_status         = null
        arn                         = "arn:aws:s3:::testing-omron-project-1"
        bucket                      = "testing-omron-project-1"
        bucket_domain_name          = "testing-omron-project-1.s3.amazonaws.com"
        bucket_prefix               = null
        bucket_regional_domain_name = "testing-omron-project-1.s3.ap-south-1.amazonaws.com"
        hosted_zone_id              = "Z11RGJOFQNVJUP"
        id                          = "testing-omron-project-1"
        object_lock_enabled         = false
        policy                      = null
        region                      = "ap-south-1"
        request_payer               = "BucketOwner"
        tags                        = {}
        tags_all                    = {}

        grant {
            id          = "c3396aaea2c444d842b410912364c34f93533f69d403d69fcccd02a5ea3c023a"
            permissions = [
                "FULL_CONTROL",
            ]
            type        = "CanonicalUser"
            uri         = null
        }

        server_side_encryption_configuration {
            rule {
                bucket_key_enabled = true

                apply_server_side_encryption_by_default {
                    kms_master_key_id = null
                    sse_algorithm     = "AES256"
                }
            }
        }

        versioning {
            enabled    = true
            mfa_delete = false
        }
    }
