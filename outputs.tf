output "vpc_id" {
    value = ["${aws_vpc.vpc.id}"]
}
output "subnet_1a" {
  value = ["${aws_subnet.subpublic1.id}"]
}
output "subnet_2a" {
  value = ["${aws_subnet.subpublic2.id}"]
}
output "LoadBalancerUrl" {
  value = ["${aws_lb.alb.dns_name}"]
}

output "Bucket" {
  value = ["${aws_s3_bucket.alb-s3.bucket}"]
}
