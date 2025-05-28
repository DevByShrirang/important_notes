#ec2 creation with ansible.
# ec2_creation.yml
---
 - name: 
   hosts: localhost
   connection: local
   tasks:
    - name: start an ec2 instance with public ip address.
       amazon.aws.ec2_instance:
        name: "{{item.name}}"
        instance_type: "t2.micro"
        security_group: default
        region: us-east-1
        aws_access_key: "{{ec2_access_key}}"
        aws_secret_key: "{{ec2_secret_key}}"
        network:
         assign_public_ip: true
        image_id: "{{item.image}}"
        tags:
          environment: "{{item.name}}"
       loop:
         - {image: "ami-084568db4383264d4", name: "manage-node-1"}
         - {image: "ami-0238687267thhuw66", name: "manage-node-2"}
         - {image: "ami-0238687267thhuw66", name: "manage-node-3"}


********************************************************************************

passwordless authentication:-

Using Public Key
ssh-copy-id -f "-o IdentityFile <PATH TO PEM FILE>" ubuntu@<INSTANCE-PUBLIC-IP>
ssh-copy-id: This is the command used to copy your public key to a remote machine.
-f: This flag forces the copying of keys, which can be useful if you have keys already set up and want to overwrite them.
"-o IdentityFile ": This option specifies the identity file (private key) to use for the connection. The -o flag passes this option to the underlying ssh command.
ubuntu@: This is the username (ubuntu) and the IP address of the remote server you want to access.