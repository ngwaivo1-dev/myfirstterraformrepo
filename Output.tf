output "ec2_instance_id" {
  description = "ID of the EC2 instance created"
  value       = aws_instance.my_ec2.id
}

output "ec2_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.my_ec2.public_ip
}

output "ec2_public_dns" {
  description = "Public DNS name of the EC2 instance"
  value       = aws_instance.my_ec2.public_dns
}

output "keypair_name" {
  description = "Name of the key pair used for the instance"
  value       = aws_key_pair.my_keypair.key_name
}
