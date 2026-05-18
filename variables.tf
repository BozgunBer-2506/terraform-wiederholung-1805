variable "aws_instance_type" {
  type    = string
  default = "t3.micro"
}

variable "instance_count" {
  type    = number
  default = 2
}

variable "region" {
  type    = string
  default = "eu-central-1"
}

variable "bucket_name" {
  type    = string
  default = "terraform-wiederholung-bucket-bozgun"
}
