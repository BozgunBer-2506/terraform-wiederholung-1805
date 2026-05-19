terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_security_group" "web_sg" {
  name = "terraform-wiederholung-sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "meine_instanz" {
  count                  = var.instance_count
  ami                    = "ami-051eaec1417c5d4ae"
  instance_type          = var.aws_instance_type
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  key_name               = "CI-CD-Key"

  tags = {
    Name     = "terraform-wiederholung-${count.index + 1}"
    Umgebung = "dev"
  }
}

resource "aws_s3_bucket" "mein_bucket" {
  bucket = var.bucket_name
}
