resource "aws_instance" "webservers" {
  count                       = local.new_env == "development" ? 1 : 1
  ami                         = lookup(var.amis, var.aws_region)
  instance_type               = lookup(var.instance_type, local.new_env)
  key_name                    = var.key_name
  subnet_id                   = element(aws_subnet.public-subnets.*.id, count.index)
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name              = "${var.vpc_name}-Public-Server-${count.index + 1}"
    Terraform-Managed = "Yes"
    Env               = local.new_env
    ProjectID         = local.projectId
  }
  user_data = <<-EOF
		#!/bin/bash
        sudo apt-get update
		sudo apt-get install -y nginx
		sudo systemctl start nginx
		sudo systemctl enable nginx
		echo "<center><h1>"${var.vpc_name}-Public-Server-${count.index + 1}"</h1></center>" | sudo tee /var/www/html/index.html
	EOF
}

