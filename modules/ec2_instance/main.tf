resource "aws_instance" "wordpress" {
  ami                         = "ami-0dba2cb6798deb6d8" # Ubuntu 20.04 LTS AMI ID, update this if needed
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.vpc_security_group_ids
  associate_public_ip_address = var.associate_public_ip_address

  user_data = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo apt install -y nginx php-fpm php-mysql mysql-client
              sudo apt install -y wordpress
              sudo ln -s /usr/share/wordpress /var/www/html/wordpress
              sudo systemctl start nginx
              sudo systemctl enable nginx
              EOF

  tags = var.tags
}
