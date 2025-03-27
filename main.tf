
module "s3" {
  source        = "./modules/s3"
  bucket_name   = "${var.environment}-omron-vitalsight-1"
  versioning    = true
  force_destroy = false
}


# module "cdn" {
#   source               = "./modules/cdn"
#   bucket_name          = "${var.environment}-omron-vitalsight-1"
#   acl                  = "private"
#   versioning           = true
#   force_destroy        = true
#   logging              = true
#   logging_bucket       = "${var.environment}-omron-vitalsight-1"
#   cdn_enabled          = true
#   cdn_price_class      = "PriceClass_100"
#   origin_domain_name   = "${var.environment}-omron-vitalsight-1.s3.amazonaws.com"
# }






