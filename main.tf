    provider "aws" {
    region = "ap-south-1"  # Change this if needed
    }

    data "aws_vpc" "default" {
    default = true
    }

    # Fetch a specific default subnet by filtering with an availability zone
    data "aws_subnet" "default_subnet" {
    vpc_id = data.aws_vpc.default.id
    filter {
        name   = "availability-zone"
        values = ["ap-south-1a"]  # Change this if needed
    }
    }

    resource "aws_instance" "ubuntu_instance_1" {
    ami             = "ami-00bb6a80f01f03502"  # Ubuntu 22.04 AMI for us-east-1
    instance_type   = "t2.micro"
    key_name        = "mujahed"  # Replace with your key pair name
    security_groups = ["sg-0fca7d5d922bab104"]
    subnet_id       = data.aws_subnet.default_subnet.id

    tags = {
        Name = "Jenkins-Server"
    }
    }

    resource "aws_instance" "ubuntu_instance_2" {
    ami             = "ami-00bb6a80f01f03502"  # Same Ubuntu 22.04 AMI
    instance_type   = "t2.micro"
    key_name        = "mujahed"
    security_groups = ["sg-0fca7d5d922bab104"]
    subnet_id       = data.aws_subnet.default_subnet.id

    tags = {
        Name = "Docker-Server"
    }
    }

    output "jenkins_server_public_ip" {
    value = aws_instance.ubuntu_instance_1.public_ip
    }

    output "docker_server_public_ip" {
    value = aws_instance.ubuntu_instance_2.public_ip
    }
