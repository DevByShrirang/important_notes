data "aws_availability_zones" "available" {}
resource "aws_subnet" "public" {
    vpc_id = aws_vpc.production_vpc.id
    cidr_block = "172.31.1.0/24"
    availability_zone = data.aws_availability_zones.available.names[0]

    }
