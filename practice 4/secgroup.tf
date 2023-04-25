resource "aws_security_group" "Security_Group_For_Terraform" {
  vpc_id = "vpc-0f8c4078350310b59"
  name = "Terraform_SG"
  description = "Security Group to allow SSH"
  egress {
    cidr_blocks = [ "0.0.0.0/0" ]
    from_port = 0
    protocol = "-1"
    to_port = 0
  }
  ingress {
    cidr_blocks = [ "0.0.0.0/0" ]
    from_port = 22
    protocol = "tcp"
    to_port = 22
  }
  tags = {
    "Name" = "allow SSH"
  }
}