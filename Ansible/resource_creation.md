#ec2 creation with ansible.
# ec2_creation.yml
---
 - name: 
   hosts: localhost
   connection: local
   tasks:
    - name: start an ec2 instance with public ip address.
       amazon.aws.ec2_instance:
        name: "ansible-instance"
        instance_type: "t2.micro"
        security_group: default
        region: us-east-1
        aws_access_key: "{{ec2_access_key}}"
        aws_secret_key: "{{ec2_secret_key}}"
        network:
         assign_public_ip: true
        image_id: ami-084568db4383264d4
        tags:
          environment:  Testing


make ready ec2 creation yaml and inventory.ini is required.

we will use ansible galaxy role.
command-ansible galaxy role init ec2. 

above command creates basic directory structure for ansible role ec2. it helps organize tasks , variables and other files in clean, reusable format.
Role is useful for reusability and modularity.
Makes it easier to share roles across teams or through ansible galaxy
helps in organizing playbook for large scale automation projects
improves collabarations 


---
 - name: 
   hosts: localhost
   connection: local
   roles:
    - ec2

    hosts: localhost 
  this means the playbook runs locally on the machine where the ansible is being executed.

   connection: local
   specifies that ansible should use local execution not ssh into remote host. this is typical for tasks ike launching aws ec2 instance.

   roles:
    - ec2

    here we are using role named ec2 in playbook. that role includes set of tasks , like creating ec2 instance, tagging them , or attaching security group on aws.
    it helps keep our playbook organized and reusable by putting related tasks in one place.

    Now we will go into task>main.yml file

  - name: start an instance with a public IP address
    amazon.aws.ec2_instance:
      name: "ansible-instance"
      # key_name: "prod-ssh-key"
      # vpc_subnet_id: subnet-013744e41e8088axx
      instance_type: t2.micro
      security_group: default
      region: us-east-1
      aws_access_key: "{{ec2_access_key}}"  # From vault as defined
      aws_secret_key: "{{ec2_secret_key}}"  # From vault as defined      
      network:
        assign_public_ip: true
      image_id: ami-04b70fa74e45c3917
      

Ansible has build in vault integration. with using vault we can secure variable, password, tokens.

create a password for vault.
openssl rand -base64 2048 > vault.pass

add your aws credintials using the below vault command
ansible-vault create group_vars/all/pass.yml --vault-password-file vault.pass

add access and secret key in above files.



root@ip-172-31-84-95:~/ec2# ansible-playbook -i inventory.ini ec2_create.yml --vault-password-file vault.pass












