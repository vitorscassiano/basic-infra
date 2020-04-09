provider "aws" {
  region = "us-east-1"
  profile = "default"
}

/*
resource "aws_spot_instance_request" "exp_cheap_spark" {
  ami = "${var.instance_ami[terraform.workspace]}"
  instance_type = "${var.instance_type[terraform.workspace]}"
  key_name = "${var.key_name}"

  spot_price = "0.03"

  tags = {
    Team        = "awesome_team"
    Product     = "awesome_product"
    Environment = "development"
    Owner       = "awesome_owner"
  }
}
*/

resource "aws_instance" "basic_infra" {
  ami           = "${var.instance_ami[terraform.workspace]}"
  instance_type = "${var.instance_type[terraform.workspace]}"
  user_data     = "${file("user_data.sh")}"
  key_name      = "${var.key_name}"

  root_block_device = {
    volume_size = "${var.volume_size[terraform.workspace]}"
    volume_type = "gp2"
  }

  vpc_security_group_ids  = "${var.security_groups}"
  subnet_id               = "${var.subnets}"
  
  tags = {
    Team        = "awesome_team"
    Product     = "awesome_product"
    Environment = "development"
    Owner       = "awesome_owner"
  }
}

resource "aws_route53_record" "basic_route" {
  zone_id = "${var.route_id}"
  name    = "awesome_infra"
  type    = "A"
  ttl     = "60"
  records = ["${aws_instance.basic_infra.private_ip}"]
}