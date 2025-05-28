resource "aws_instance" "production-ec2" {
  count = 2
  ami           = "ami-084568db4383264d4"   
  instance_type = "t2.micro"
  key_name      = "jenkins"             

  tags = {
    Name = "Server-${count.index}"
  }
  depends_on = [ aws_security_group.Prod-SG  ]

 
  lifecycle {
    prevent_destroy = false
  }
}