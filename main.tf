module "vpc" {
  source     = "./modules/vpc"
  vpc_cidr   = var.vpc_cidr
}

module "subnet" {
  source     = "./modules/subnet"
  vpc_id     = module.vpc.vpc_id
  subnet_cidr = var.subnet_cidr
  az = "ap-south-1a"
}

module "security_group" {
  source      = "./modules/security-group"
  vpc_id      = module.vpc.vpc_id
}

module "ec2" {
  source         = "./modules/ec2"
  subnet_id      = module.subnet.subnet_id
  security_group = module.security_group.sg_id
  instance_type  = var.instance_type
  ami_id         = var.ami_id
  environment = "${var.environment}"
}

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

module "s3_import" {
source = "./modules"
}






