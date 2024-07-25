resource "aws_instance" "bastion" {
  ami                    = "ami-0dba2cb6798deb6d8" # Ubuntu 20.04 LTS AMI ID, update if needed
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [aws_security_group.bastion.id]

  tags = var.tags
}

resource "aws_security_group" "bastion" {
  name        = "dmws-wp-bastion-sg"
  description = "Security group for bastion host"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
