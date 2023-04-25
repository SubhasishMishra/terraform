resource "aws_instance" "BC_WEB" {
  ami = var.AMIS
  instance_type = "t2.micro"
  key_name = var.KEY_NAME
  subnet_id = aws_subnet.bc-pub-1.id
  vpc_security_group_ids = [aws_security_group.BC_atack_sg.id]  
  tags = {
    "Name" = "Business Card Web Server"
  }
}

output "PublicIP" {
  value = aws_instance.BC_WEB.public_ip
}