provider "aws" {
  region = var.aws_region
}


#Create security group with firewall rules
resource "aws_security_group" "security_group" {
  name        = "security_group"
  description = "security group for ec2 instances"


 ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
    ingress {
      from_port = -1
      to_port = -1
      protocol = "icmp"
      cidr_blocks = ["0.0.0.0/0"]
    }
   egress {
      from_port       = 0
      to_port         = 0
      protocol        = "-1"
      cidr_blocks     = ["0.0.0.0/0"]
    }

  tags= {
    Name = "Security groups for ec2 instances"
  }
}

resource "aws_instance" "instance01" {
  ami           = var.aws_ami
  key_name = var.key_name
  instance_type = var.instance_type
  security_groups= [ "security_group"]
  associate_public_ip_address = "true"

  tags= {
    Name = "instance01"
  }
}
resource "aws_instance" "instance02" {
  ami           = var.aws_ami
  key_name = var.key_name
  instance_type = var.instance_type
  security_groups= [ "security_group"]
  tags= {
    Name = "instance02"
  }
}

