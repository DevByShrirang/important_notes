Below command is used when resource gets corrupted and need force recreation maybe due to configuration issue.


provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_instance" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI
  instance_type = "t2.micro"

  tags = {
    Name = "DemoInstance"
  }
}

terraform init
terraform apply -auto-approve

Use terraform apply -replace to recreate the instance

terraform apply -replace=aws_instance.my_instance -auto-approve
