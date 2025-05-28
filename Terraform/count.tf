resource "aws_instance" "production-server" {
    count = 2
    ami   =  "e6298629hfedpoi"
    instance_type = "t2.micro"
    tags  = {
        Name = "server-${count.index}"
    } 
}