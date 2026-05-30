output "alb_dns_name" {
  description = "URL adresa aplikacije (Load Balancer)"
  value       = "http://${aws_lb.main.dns_name}"
}

output "s3_bucket_name" {
  description = "Naziv S3 bucketa za statičke fajlove"
  value       = aws_s3_bucket.static.bucket
}

output "rds_endpoint" {
  description = "Adresa baze podataka"
  value       = aws_db_instance.main.address
}

output "ec2_instance_1_ip" {
  description = "Javna IP adresa EC2 instance 1"
  value       = aws_instance.backend_1.public_ip
}

output "ec2_instance_2_ip" {
  description = "Javna IP adresa EC2 instance 2"
  value       = aws_instance.backend_2.public_ip
}
