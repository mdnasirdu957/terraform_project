
resource "aws_s3_bucket" "s3_import" {
    bucket_name = "import-voltron-project-1"

    tags = {
        Name = "dev-voltron-test-project"
    }

}
