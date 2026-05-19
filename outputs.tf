output "public_ips" {
  value = aws_instance.meine_instanz[*].public_ip
}

output "instance_ids" {
  value = aws_instance.meine_instanz[*].id
}

output "bucket_name" {
  value = aws_s3_bucket.mein_bucket.bucket
}
