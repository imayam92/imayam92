output "Mysecurity-Group-ID" {
  value ="${aws_security_group.security_create_terraform.id}"
}

output "public-ip" {
  value = "${aws_instance.ec2_jenkins.public_ip}"
}

output "instance_state" {
  value = "${aws_instance.ec2_jenkins.instance_state}"
}

output "Mysecurity-Group-ARN" {
  value ="${aws_security_group.security_create_terraform.arn}"
}
