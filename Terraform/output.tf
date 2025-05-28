
#output in terraform help to display important values like instance_ips vpc id


output "instance_ip" {
  value = aws_instance.web.public_ip
}
