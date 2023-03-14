resource "aws_security_group" "web_sg" {
  name        = "web_sg"
  description = "Allow http inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    description = "Allow Http"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.cidr_block]
  }

  egress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.cidr_block]
  }

  tags = {
    Name = "web_sg"
  }
}
