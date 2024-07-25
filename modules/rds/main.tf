resource "aws_db_subnet_group" "main" {
  name       = "dmws-wp-rds-subnet-group"
  subnet_ids = var.private_subnets

  tags = {
    Name = "DMWS-WP-RDS-Subnet-Group"
  }
}

resource "aws_db_instance" "wordpress_db" {
  identifier              = "dmws-wp-rds"
  allocated_storage       = 20
  storage_type            = "gp2"
  engine                  = "mysql"
  engine_version          = "8.0"
  instance_class          = "db.t3.micro"
  db_name                 = "wordpressdb"
  username                = var.db_username
  password                = var.db_password
  parameter_group_name    = "default.mysql8.0"
  skip_final_snapshot     = true
  vpc_security_group_ids  = [aws_security_group.rds_sg.id]
  db_subnet_group_name    = aws_db_subnet_group.main.name
  multi_az                = true
  publicly_accessible     = false

  tags = {
    Name = "DMWS-WP-RDS"
  }
}

resource "aws_security_group" "rds_sg" {
  name        = "dmws-wp-rds-sg"
  description = "Security group for RDS"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 3306
    to_port     = 3306
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
