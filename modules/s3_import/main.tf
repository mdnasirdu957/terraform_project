
resource "aws_s3_bucket" "s3_import" {
    bucket_name = var.bucket_name

    tags = {
        Name = dev-voltron-test-project
    }

}
