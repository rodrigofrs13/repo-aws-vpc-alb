resource "aws_vpc" "vpc" {
    cidr_block  = "${var.vpccidr}"
    enable_dns_hostnames = true

    tags = {
        Name = "VPC-${var.cliente}"
        Projeto = "ISD"   
        Cliente = "${var.cliente}"     
        Deploy = "Terraform"
    }
}


