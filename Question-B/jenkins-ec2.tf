module "jenkins-ec2" {

source = "./ec2-module"
ami_id = "ami-0c2d06d50ce30b442"
instance_type = "t3.micro"
key_name = "ahmad_key"
ingressrules = [8080, 22, 80]

}


resource "null_resource" "jenkins_provisioner" {
  triggers = {
    public_ip = aws_instance.web.public_ip
  }

connection {
    type         = "ssh"
    host         = aws_instance.web.public_ip
    user         = "ec2-user"
    private_key  = file("ahmad_key.pem" )
   }

provisioner "remote-exec"  {
    inline  = [
      "sudo yum install -y jenkins java-11-openjdk-devel",
      "sudo yum -y install wget",
      "sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo",
      "sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key",
      "sudo yum upgrade -y",
      "sudo yum install jenkins -y",
      "sudo systemctl start jenkins",
      ]
   }

}

