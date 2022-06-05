# Create a new load balancer
resource "aws_elb" "terra-elb" {
  name               = "terra-elb"
  subnets = aws_subnet.public.*.id
  security_groups = [aws_security_group.demosg.id]
   
   
 
  

}

  # Target group for the web servers
resource "aws_lb_target_group" "web_servers" {
  name     = "web-servers-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.Demo_vpc.id
}

# todo: Improve by adding certs
resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.terra-elb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.web_servers.arn
  }
}

output "elb-dns-name" {
  value = aws_elb.terra-elb.dns_name
}