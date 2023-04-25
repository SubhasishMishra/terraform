resource "aws_security_group" "BC_atack_sg" {
    vpc_id = aws_vpc.BusinessCard
    name = "bc-stack-sg"
    description = "Security Group for SSH"
    egress {
        cidr_blocks = [ "0.0.0.0/0" ]
        from_port = 0
        protocol = "-1"
        to_port = 0
    } 
    ingress {
        cidr_blocks = [ var.MYIP ]
        from_port = 22
        protocol = "tcp"
        to_port = 22
    }
    tags = {
      "Name" = "allow-ssh"
    }
}