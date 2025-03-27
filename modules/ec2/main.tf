resource "aws_instance" "main" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  subnet_id       = var.subnet_id
  security_groups = [var.security_group]
  associate_public_ip_address = "true"
  tags = {
    Name = "${var.environment}-omron-1"
    environment = "${var.environment}"
  }
}

