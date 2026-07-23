resource "aws_ssm_parameter" "backend_alb_listner_arm" {
  name      = "/${var.project}/${var.environment}/backend_alb_listner_arm" # /roboshop/dev/backend_alb_sg_id
  type      = "String"
  value     = aws_lb_listener.http.arm
  overwrite = true
}
