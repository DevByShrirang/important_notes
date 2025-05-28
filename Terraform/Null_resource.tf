#Null resource is used to update package on server after installation.

resource "null_resource" "post_deployment" {
    depends_on = [aws_instance.production_server]  # server name any

provisioner "remote-exec" {
    inline = [
        "sudo apt update",
        "sudo apt install -y nginx",
        "sudo systemctl start nginx"
    ]
    connection {
        type = "ssh"
        host = aws_instance.production_server.public_ip
        user = "ubuntu"
        private_key = file("~/Downloads/jenkins.pem")
    }
}
}