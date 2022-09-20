resource "aws_instance" "ec2_instance" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  security_groups = [aws_security_group.web_traffic.name]
  key_name        = var.key_name

  # This EC2 Instance has a public IP and will be accessible directly from the public Internet
  associate_public_ip_address = true

   tags = {
    "Terraform" = "true"
  }
}

resource "aws_security_group" "web_traffic" {
  name        = "Allow web traffic"
  description = "inbound ports for ssh and standard http and everything outbound"
  dynamic "ingress" {
    for_each = var.ingressrules
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "TCP"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    "Terraform" = "true"
  }
}
