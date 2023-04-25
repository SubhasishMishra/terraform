resource "aws_instance" "BC-inst" {
 ami = var.AMIS[var.REGION] 
 instance_type =  "t2.micro"
 availability_zone = var.ZONE1
 key_name = "Docker-key"
 vpc_security_group_ids = [ "sg-04cf62e1bf052b3ab" ]
   tags = {
    Name = "BC_Terraform"
    Project= "Business Card"
  }
}