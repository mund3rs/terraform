resource "aws_launch_configuration" "wordpress" {
  name          = "DMWS-WP-LC"
  image_id      = "ami-0dba2cb6798deb6d8" # Ubuntu 20.04 LTS AMI ID
  instance_type = var.instance_type
  key_name      = var.key_name
  security_groups = var.vpc_security_group_ids

  user_data = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo apt install -y nginx php-fpm php-mysql mysql-client
              sudo apt install -y wordpress
              sudo ln -s /usr/share/wordpress /var/www/html/wordpress
              sudo systemctl start nginx
              sudo systemctl enable nginx
              EOF

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "wordpress" {
  launch_configuration = aws_launch_configuration.wordpress.id
  vpc_zone_identifier  = var.public_subnets
  desired_capacity     = 2
  max_size             = 3
  min_size             = 1

  tag {
    key                 = "Name"
    value               = "DMWS-WP-ASG"
    propagate_at_launch = true
  }

  tag {
    key                 = "Environment"
    value               = "prod"
    propagate_at_launch = true
  }

  health_check_type         = "ELB"
  health_check_grace_period = 300

  force_delete = true

  depends_on = [aws_lb_target_group.wordpress]
}
