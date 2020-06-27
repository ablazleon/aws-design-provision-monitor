# TODO: Designate a cloud provider, region, and credentials

provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "/mnt/c/Users/ablaz/rootkey.csv"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2

resource "aws_instance" "UdacityT2" {
  ami           = "ami-0ac80df6eff0e70b5"
  count         = "4"
  instance_type = "t2.micro"
  subnet_id     = "subnet-01158f4c"
  tags = {
    Name = "Udacity T2"
  }
}


# TODO: provision 2 m4.large EC2 instances named Udacity M4

resource "aws_instance" "UdacityM4" {
   ami           = "ami-0ac80df6eff0e70b5"
   count         = "2"
   instance_type = "m4.large"
   subnet_id     = "subnet-01158f4c"
   tags = {
     Name = "Udacity M4"
   }
 }





