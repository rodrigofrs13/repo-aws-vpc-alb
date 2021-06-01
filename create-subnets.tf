resource "aws_subnet" "subpublic1" {
    vpc_id      =   aws_vpc.vpc.id
    cidr_block  =   var.publicblockaz1
    map_public_ip_on_launch =   var.publicip 
    availability_zone   =   var.az1

    tags    =   {
        Name    =  "${var.cliente}-Subnet-AZ-1a"
        Projeto = "ISD"   
        Cliente = "${var.cliente}"     
        Deploy = "Terraform"            
    }
}

resource "aws_subnet" "subpublic2" {
    vpc_id      =   aws_vpc.vpc.id
    cidr_block  =   var.publicblockaz2
    map_public_ip_on_launch =   var.publicip 
    availability_zone   =   var.az2

    tags    =   {
        Name    =  "${var.cliente}-Subnet-AZ-1b"
        Projeto = "ISD"   
        Cliente = "${var.cliente}"     
        Deploy = "Terraform"    
    }  
}
