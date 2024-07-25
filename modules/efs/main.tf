resource "aws_efs_file_system" "wordpress" {
  creation_token = "wordpress-efs"
  encrypted      = true

  tags = {
    Name = "DMWS-WP-EFS"
  }
}

resource "aws_efs_mount_target" "wordpress" {
  for_each          = toset(var.subnet_ids)
  file_system_id    = aws_efs_file_system.wordpress.id
  subnet_id         = each.value
  security_groups   = [aws_security_group.efs.id]
}

resource "aws_security_group" "efs" {
  name        = "dmws-wp-efs-sg"
  description = "Security group for EFS"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 2049
    to_port     = 2049
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
