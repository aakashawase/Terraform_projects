resource "aws_instance" "app_server" {

  count                  = 2
  ami                    = "ami-08ca454a0159c3c19"
  instance_type          = "t2.micro"
  key_name               = "Ami_web_server"
  monitoring             = true
  vpc_security_group_ids = ["${aws_security_group.web_sg.id}"]
  subnet_id              = element(var.subnets, count.index)

  tags = {
    Name        = "app_server_${count.index}"
    Terraform   = "True",
    Descreption = "Web Server"
  }
}


