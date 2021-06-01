data "aws_elb_service_account" "alb" {}

resource "aws_s3_bucket" "alb-s3" {
//  bucket = format("%s-%d",var.bucketname,random_string.random.result)
  bucket = "${var.bucketname}-${random_string.random.result}"
  acl = "private"

//  versioning {
//    enabled = true
//  }
  force_destroy = true

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
      }
    }
}

  tags = {
    Projeto = "ISD"
    Cliente = "${var.cliente}"   
    Deploy = "Terraform"    
  }
}

resource "random_string" "random" {
  length = 10
  special = false
  lower = false
  upper = false 
  number = true
}


resource "aws_s3_bucket_policy" "allow_lb_logs" {
  bucket = "${aws_s3_bucket.alb-s3.id}"

  policy = <<POLICY
{
  "Id": "Policy",
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::${aws_s3_bucket.alb-s3.id}/*",
      "Principal": {
        "AWS": [
          "${data.aws_elb_service_account.alb.arn}"
        ]
      }
    }
  ]
}
POLICY
}