resource "aws_security_group" "sg-alb" {
    name = "SG-Cliente-${var.cliente}"
    description = "Security Group ${var.cliente}"
    vpc_id = aws_vpc.vpc.id


    ingress {
        from_port = 22
        to_port = 22
        protocol = "TCP"
        cidr_blocks = ["${var.bastion}"]
        description = "Acesso 22 - Bastion"
    }

    ingress {
        from_port = 3389
        to_port = 3389
        protocol = "TCP"
        cidr_blocks = ["${var.bastion}"]
        description = "Acesso RDP - Bastion"
    }

    ingress {
        from_port = 9043
        to_port = 9043
        protocol = "TCP"
        cidr_blocks = "${var.senips}"
        description = "Acesso Sensedia - External"
    }

    ingress {
        from_port = 9000
        to_port = 9000
        protocol = "TCP"
        cidr_blocks = "${var.senips}"
        description = "Acesso Sensedia - External"
    }

    ingress {
        from_port = 8090
        to_port = 8090
        protocol = "TCP"
        cidr_blocks = "${var.senips}"
        description = "Acesso Sensedia - External"
    }        

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "Security Group Cliente ${var.cliente}"
        Projeto = "ISD"   
        Cliente = "${var.cliente}"     
        Deploy = "Terraform"
    }
}

