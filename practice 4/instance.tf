resource "aws_instance" "Terraform_Instance_Creation" {
  ami = var.AMIS
  instance_type = "t2.micro"
  key_name = var.KEY_NAME
  vpc_security_group_ids = aws_security_group.Security_Group_For_Terraform.id
  user_data = "${file("init.sh")}"
  tags = {
    "Name" = "Terraform WebServer Instance"
  }
}