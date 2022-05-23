resource "aws_instance" "ec2_jenkins_slave" {
  ami           = "${lookup(var.ami_id, var.region)}"
  instance_type = "${var.instance_type}"
  # Security group assign to instance
  vpc_security_group_ids = [aws_security_group.security_create_terraform.id]

  # key name
  key_name = "${var.key_name}"

  user_data = <<EOF
                #! /bin/bash
                sudo yum update -y
                sudo yum install java-1.8.0-openjdk-devel -y

           EOF

  tags = {
    Name = "Jenkins_slave tf"
  }
}
