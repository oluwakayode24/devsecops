module "ec2_instance" {

  source            = "../../../../..//modules/ec2"
  aws_ami           = "ami-0440d3b780d96b29d"
  instance_type     = "t2.micro"
  availability_zone = "us-east-1a"
  tags = {
    Name = "rosi_ec2_instance_1"
  }
  region = "us-east-1"
}