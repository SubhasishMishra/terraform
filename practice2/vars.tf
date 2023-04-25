variable REGION {
  default = "ap-south-1"
}
variable ZONE1 {
  default = "ap-south-1a"
}
variable AMIS {
  type = map
  default {
    ap-south-1 = "ami-01b6a0d4460149a95"
    us-east-2 = "ami-0be9bc28d157f8475"
  }

}