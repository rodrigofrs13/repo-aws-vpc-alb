resource "aws_lb_target_group" "tg-group9000" {
    name            =   "tg-isd-${var.cliente}-9000"
    port            =   9000
    protocol        =   "HTTP"
    target_type     =   "ip"
    vpc_id          = "${aws_vpc.vpc.id}" 

    health_check {
        healthy_threshold   = "2"
        unhealthy_threshold = "6"
        interval            = "30"
        matcher             = "200"
        path                = "/actuator/health"
        protocol            = "HTTP"
        timeout             = "5"
    }
    
    tags = {
        Name = "tg-isd-${var.cliente}-9000"
        Projeto = "ISD"   
        Cliente = "${var.cliente}"     
        Deploy = "Terraform"        
    }
}
resource "aws_lb_target_group_attachment" "att_tg9000" {
    target_group_arn = "${aws_lb_target_group.tg-group9000.arn}"
    target_id = "${var.targetip}"
    port = 9000
    availability_zone = "all"
}

resource "aws_lb_target_group" "tg-group8090" {
    name            =   "tg-isd-${var.cliente}-8090"
    port            =   8090
    protocol        =   "HTTP"
    target_type     =   "ip"
    vpc_id          = "${aws_vpc.vpc.id}" 

    health_check {
        healthy_threshold   = "2"
        unhealthy_threshold = "6"
        interval            = "30"
        matcher             = "200"
        path                = "/actuator/health"
        protocol            = "HTTP"
        timeout             = "5"
    }
    
    tags = {
        Name = "tg-isd-${var.cliente}-8090"
        Projeto = "ISD"   
        Cliente = "${var.cliente}"     
        Deploy = "Terraform"            
    }
 
}
resource "aws_lb_target_group_attachment" "att_tg8090" {
    target_group_arn = "${aws_lb_target_group.tg-group8090.arn}"
    target_id = "${var.targetip}"
    port = 8090
    availability_zone = "all"
}

resource "aws_lb_target_group" "tg-group9043" {
    name            =   "tg-isd-${var.cliente}-9043"
    port            =   9043
    protocol        =   "HTTP"
    target_type     =   "ip"
    vpc_id          = "${aws_vpc.vpc.id}" 

    health_check {
        healthy_threshold   = "2"
        unhealthy_threshold = "6"
        interval            = "30"
        matcher             = "200"
        path                = "/actuator/health"
        protocol            = "HTTP"
        timeout             = "5"
    }
    
    tags = {
        Name = "tg-isd-${var.cliente}-9043"
        Projeto = "ISD"   
        Cliente = "${var.cliente}"     
        Deploy = "Terraform"            
    }
 
}
resource "aws_lb_target_group_attachment" "att_tg9043" {
    target_group_arn = "${aws_lb_target_group.tg-group9043.arn}"
    target_id = "${var.targetip}"
    port = 9043
    availability_zone = "all"
}