# Creating a new load balancer
resource "aws_elb" "web_alb" {
  name               = "webAlb"
  availability_zones = ["us-east-1b", "us-east-1f"]

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }


  health_check {
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:80/"
    interval            = 30
  }

  instances                   = [for instances in aws_instance.app_server : instances.id]
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

  tags = {
    Name = "web_alb"
  }
}

output "web_app_lb_url" {
  value = "http://${aws_elb.web_alb.dns_name}"
}