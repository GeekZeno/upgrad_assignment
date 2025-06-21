output "vpc_id" {
  value = aws_vpc.main.id
}

output "nat_gateway_ip" {
  value = aws_eip.nat.public_ip
}

output "private_subnet_az1" {
  value = aws_subnet.private_subnet_az1.id
}

output "private_subnet_az2" {
  value = aws_subnet.private_subnet_az2.id
}

output "bastion_sg_id" {
  value = aws_security_group.bastion_sg.id
}

output "private_sg_id" {
  value = aws_security_group.jenkins_sg.id
}

output "web_sg_id" {
  value = aws_security_group.app_sg.id
}

output "bastion_public_ip" {
  value = aws_instance.bastion.public_ip
}

output "public_subnet_az2" {
  value = aws_subnet.public_subnet_az2.id
}

