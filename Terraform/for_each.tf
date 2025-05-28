resource "aws_instance" "production_server" {
      for_each = {
        dev = "ami-0953476d60561c955"
        test = "ami-084568db4383264d4"
        prod = "ami-0c15e602d3d6c6c4a"

      }
      ami = each.value
      instance_type = "t2.micro"
      tags = {
        Name = "Server-${each.key}"
      }

    }   
    