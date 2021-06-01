

resource "aws_lb" "alb" {
    name            =   "alb-isd-${var.cliente}"
    internal        =   false
    load_balancer_type  =   "application"
    security_groups =   ["${aws_security_group.sg-alb.id}"]
    subnets         =   ["${aws_subnet.subpublic1.id}", "${aws_subnet.subpublic2.id}"]

//    enable_deletion_protection  =   true

    access_logs {
        bucket  = "${aws_s3_bucket.alb-s3.bucket}"
        prefix  = "${var.cliente}"
        enabled = true
    }

    tags = {
        Name = "ALB-ISD-${var.cliente}"
        Projeto = "ISD"   
        Cliente = "${var.cliente}"     
        Deploy = "Terraform"            
    }
}

 