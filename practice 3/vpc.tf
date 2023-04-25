resource "aws_vpc" "BusinessCard"{
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "defult"
    enable_dns_support = "true"
    enable_dns_hostname = "true"
    tags = {
        Name = "BusinessCard"
    }
}

resource "aws_subnet" "bc-pub-1" {
    vpc_id = aws_vpc.BusinessCard.id
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_lunch = "true"
    availability_zone = var.ZONE1
    tags = {
        Name = "bc-pub-1"
    }
}

resource "aws_subnet" "bc-pub-2" {
    vpc_id = aws_vpc.BusinessCard.id
    cidr_block = "10.0.2.0/24"
    map_public_ip_on_lunch = "true"
    availability_zone = var.ZONE1
    tags = {
        Name = "bc-pub-2"
    }
}

resource "aws_subnet" "bc-pub-3" {
    vpc_id = aws_vpc.BusinessCard.id
    cidr_block = "10.0.3.0/24"
    map_public_ip_on_lunch = "true"
    availability_zone = var.ZONE1
    tags = {
        Name = "bc-pub-3"
    }
}

resource "aws_subnet" "bc-priv-1" {
    vpc_id = aws_vpc.BusinessCard.id
    cidr_block = "10.0.4.0/24"
    map_public_ip_on_lunch = "true"
    availability_zone = var.ZONE1
    tags = {
        Name = "bc-priv-4"
    }
}

resource "aws_subnet" "bc-priv-2" {
    vpc_id = aws_vpc.BusinessCard.id
    cidr_block = "10.0.5.0/24"
    map_public_ip_on_lunch = "true"
    availability_zone = var.ZONE1
    tags = {
        Name = "bc-priv-2"
    }
}

resource "aws_subnet" "bc-priv-3" {
    vpc_id = aws_vpc.BusinessCard.id
    cidr_block = "10.0.6.0/24"
    map_public_ip_on_lunch = "true"
    availability_zone = var.ZONE1
    tags = {
        Name = "bc-priv-3"
    }
}

resource "aws_internet_gateway" "bc-IGW" {
    vpc_id = aws_vpc.BusinessCard.id
    tags = {
        Name = "BC-IGW"
    }
}

resource "aws_route_table" "bc-pub-RT" {
    vpc_id = aws_vpc.BusinessCard.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.bc-IGW.id
    }
    tags = {
        Name = "BC-pub-RT"
    }
}

resource "aws_route_table_association" "BC-pub-1-a"{
    subnet_id = aws_subnet.bc-pub-1.id
    route_table_id = aws_route_table.bc-pub-RT.id
}

resource "aws_route_table_association" "BC-pub-2-a"{
    subnet_id = aws_subnet.bc-pub-2.id
    route_table_id = aws_route_table.bc-pub-RT.id
}

resource "aws_route_table_association" "BC-pub-3-a"{
    subnet_id = aws_subnet.bc-pub-3.id
    route_table_id = aws_route_table.bc-pub-RT.id
}

