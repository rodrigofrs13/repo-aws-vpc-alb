
resource "aws_route_table" "public" {
  vpc_id         = aws_vpc.vpc.id
  
   tags = {
       Name = "Route-Public-${var.cliente}"
       Projeto = "ISD"   
       Cliente = "${var.cliente}"     
       Deploy = "Terraform"           
   }

}

resource "aws_route_table_association" "assoc_public1" {
  subnet_id      = aws_subnet.subpublic1.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "assoc_public2" {
  subnet_id      = aws_subnet.subpublic2.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route" "internet_access" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.gw.id

}