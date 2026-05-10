resource "aws_lb" "alb" {
  name = "application-load-balancer"
  internal = false
  load_balancer_type = "application"
  security_groups = [ var.sg_id ]
  subnets = var.subnet_ids
}

resource "aws_lb_listener" "alb-listner" {
    load_balancer_arn = aws_lb.alb.arn
    port = "80"
    protocol = "HTTP"


    default_action {
      type = "forward"
      target_group_arn = aws_lb_target_group.alb_tg.arn
    }
  
}


resource "aws_lb_target_group" "alb_tg" {
    name = "alb-tg"
    port = 80
    protocol = "HTTP"
    vpc_id = var.vpc_id
}

resource "aws_lb_target_group_attachment" "alb_tg_atchmnt" {
    count = length(var.instances)
  target_group_arn = aws_lb_target_group.alb_tg.arn
  target_id = var.instances[count.index]
  port = 80
}