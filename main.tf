provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_instance" "jenkins-demo" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"

  tags {
    Name  = "${var.name}"
    Owner = "${var.owner}"
    TTL   = "${var.ttl}"
  }

  user_data = "${var.user_data}"
  subnet_id = "${var.subnet_id}"
  vpc_security_group_ids = "${var.security_group_id}"
}
