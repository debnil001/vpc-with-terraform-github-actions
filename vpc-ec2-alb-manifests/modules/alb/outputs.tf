output "alb_details" {
  description = "ALB DNS details"
  value = aws_lb.alb.dns_name
}