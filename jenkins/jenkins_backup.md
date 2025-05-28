jenkins server backup to s3 bucket.

1) data-protection-hardware/software failure
2) recovery-
3) upgrade or migration-if we want upgrade or migration of jenkins to different environment to take backup of jenkins server is very important it will make process easier and reduce downtime.
4) historical reference-


while we taking backup of jenkins server we need to stop server.
jenkins all data available at /var/lib/jenkins- will take backup of this folder

we create s3 bucket to take backup with necessary IAM role permissions.
once backup taken from server then we will destroy this machine and create new machine with user data.
once new server will came up then we take backup from s3 bucket to the root and copy all valid files to the jenkins and we will refresh the jenkins will get restored.


systemctl stop jenkins
systemctl status jenkins


Now we will create compresed archieve tar.gz of the entire /var/lib/jenkins directory.
tar -zvcf jenkins-backup.tar.gz /var/lib/jenkins

this backup will include 
all jobs configurations
plugins
global and user specific setting
credintials
build histories

finally jenkins-backup.tar.gz file will be created and we will copy this file into (safe location) s3 bucket.

below command is used to upload jenkins backup file to s3 bucket.

required IAM role with s3 full access for upload jenkins backup file to s3 bucket. and need to attach these IAM role to EC2 instance. now will run below command.

aws s3 cp jenkins-backup.tar.gz s3://jenkins-s3-bucket/jenkins-backup.tar.gz


After creation of new server we need to take backup fiel back from s3 bucket.

aws s3 cp s3://jenkins-s3-bucket/jenkins-backup.tar.gz jenkins-backup.tar.gz


rm -rf /var/lib/jenkins/
tar  -zvcf jenkins-backup.tar.gz -C /





































































