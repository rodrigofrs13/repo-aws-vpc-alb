resource "aws_lb_listener" "front_9000" {
  load_balancer_arn = "${aws_lb.alb.arn}"
  port              = "9000"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = "${aws_lb_target_group.tg-group9000.arn}"
  }
}

resource "aws_lb_listener" "front_8090" {
  load_balancer_arn = "${aws_lb.alb.arn}"
  port              = "8090"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = "${aws_lb_target_group.tg-group8090.arn}"
  }
}

resource "aws_lb_listener" "front_9043" {
  load_balancer_arn = "${aws_lb.alb.arn}"
  port              = "9043"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = "${aws_lb_target_group.tg-group9043.arn}"
  }
}