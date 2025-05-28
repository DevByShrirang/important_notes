jenkins can be autoscaled using aws auto scaling group to ensure that build agents scale up or scale down depending on build load.
process:-
first create EC2 instance install jenkins , plugins ,security setting and java
with using this AMI we create launch template. we will mention required details in launch template.
instance type
key pair
security group
iam role
then using launch template we will create auto scaling group.
set desired capacity 1  minimum-1 maximum-5 depending on jenkins workload
then attach auto scaling group to multiple availability zone for high availability

then we will add scaling policies using cloudwatch
based on cpu utilization (add 1 instance when cpu utilization>70% for 5 minutes)
scale in when cpu usage drops below 30%

then create load balancer and attach it to auto scaling group. so traffic will get distributed across jenkins agents.
set health check on port 8080 to monitor instance health
then we will use ALB DNS name to access jenkins instead of ip address


