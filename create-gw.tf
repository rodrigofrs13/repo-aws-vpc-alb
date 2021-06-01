resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "${var.cliente}-GW"
    Projeto = "ISD"   
    Cliente = "${var.cliente}"     
    Deploy = "Terraform"        
  }
}